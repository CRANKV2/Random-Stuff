#!/system/bin/sh

# Define your 64-character API key
api_key="7bbfe128f1a317477cde59ec7c509c53f9f7c339c60a7a8aa9f353f001637eed1eee8ea4b8327f3a2f3d0165db1802d0e71a08803fdc35257ba664e42dcf51a2"

# Check if the UUID file exists
uuid_file="/sdcard/documents/uuid.info"

if [ -f "$uuid_file" ]; then
  # Read the UUID from the file
  unique_id=$(cat "$uuid_file")
else
  # Generate a new UUID and store it in the file
  unique_id=$(cat /proc/sys/kernel/random/uuid | tr -d -)

  echo "$unique_id" > "$uuid_file"
  
  # Change the file permissions to 777
  chmod 777 "$uuid_file"
fi

# Extract manufacturer and model information
manufacturer=$(getprop ro.product.manufacturer)
model=$(getprop ro.product.model)

# Determine ARM architecture
arm_type=$(uname -m | grep -oE 'armv7|aarch64' || echo "Unknown")

# Get Android version
android_version=$(getprop ro.build.version.release)

# Define the HTTP request data
http_request="POST /device_info.php HTTP/1.1\r\n"
http_request+="Host: strp.cloud\r\n"
http_request+="Content-Type: application/x-www-form-urlencoded\r\n"
http_request+="X-API-KEY: $api_key\r\n"
http_request+="\r\n"
http_request+="manufacturer=$manufacturer&model=$model&arm_type=$arm_type&android_version=$android_version&unique_id=$unique_id"

# Send the HTTP request using netcat (nc)
echo -e "$http_request" | nc strp.cloud 80

# Check if the request was successful
if [ $? -eq 0 ]; then
  echo "Device information sent successfully!"
else
  echo "Error sending device information."
fi
