#!/data/data/com.termux/files/usr/bin/bash

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

# Send device information using curl
curl -sS -X POST \
     -H "X-API-KEY: $api_key" \
     -d "manufacturer=$manufacturer&model=$model&arm_type=$arm_type&android_version=$android_version&unique_id=$unique_id" \
     https://strp.cloud/device_info.php

# Check if the request was successful
if [ $? -eq 0 ]; then
  echo "Device information sent successfully!"
  # Exit with code 0 for success
  exit 0
else
  echo "Error sending device information."
  # Exit with a non-zero code to indicate failure
  exit 1
fi
