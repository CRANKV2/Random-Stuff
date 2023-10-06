#!/system/bin/sh
# CRANKV2 @ GitHub / CREATOR
# CRANKV2 @ Telegram / CREATOR

# Magisk Module & Developer **
ID="STRPxIPadify"
VERS="v3.0"
DEV="CRANKV2"

# Colors
G='\e[01;32m'      # GREEN TEXT
R='\e[01;31m'      # RED TEXT
Y='\e[01;33m'      # YELLOW TEXT
B='\e[01;34m'      # BLUE TEXT
V='\e[01;35m'      # VIOLET TEXT
Bl='\e[01;30m'     # BLACK TEXT
C='\e[01;36m'      # CYAN TEXT
W='\e[01;37m'      # WHITE TEXT
BGBL='\e[1;30;47m' # Background W Text Bl
RBBT='\e[0;41m'    #Background R Text Bl
PB='\e[0;45m'      #Background Purple Text Black
YB='\e[33;7m'      #YellowBackground Black Text
N='\e[0m'          # How to use (example): echo "${G}example${N}"
IBlue='\e[0;94m'   #Blinking Text Slow
loadBar=' '        # Load UI
# Remove color codes if -nc or in ADB Shell
[[ -n "$1" ]] && [[ "$1" = "-nc" ]] && shift && NC=true
[[ "$NC" ]] || [[ -n "$ANDROID_SOCKET_adbd" ]] && {
  G=''
  R=''
  Y=''
  B=''
  V=''
  Bl=''
  C=''
  W=''
  N=''
  BGBL=''
  loadBar='='
}

#MORE COLORS
# Reset
Color_Off='\e[0m' # Text Reset

# Regular Colors
Black='\e[0;30m'  # Black
Red='\e[0;31m'    # Red
Green='\e[0;32m'  # Green
Yellow='\e[0;33m' # Yellow
Blue='\e[0;34m'   # Blue
Purple='\e[0;35m' # Purple
Cyan='\e[0;36m'   # Cyan
White='\e[0;37m'  # White

# Bold
BBlack='\e[1;30m'  # Black
BRed='\e[1;31m'    # Red
BGreen='\e[1;32m'  # Green
BYellow='\e[1;33m' # Yellow
BBlue='\e[1;34m'   # Blue
BPurple='\e[1;35m' # Purple
BCyan='\e[1;36m'   # Cyan
BWhite='\e[1;37m'  # White

# Underline
UBlack='\e[4;30m'  # Black
URed='\e[4;31m'    # Red
UGreen='\e[4;32m'  # Green
UYellow='\e[4;33m' # Yellow
UBlue='\e[4;34m'   # Blue
UPurple='\e[4;35m' # Purple
UCyan='\e[4;36m'   # Cyan
UWhite='\e[4;37m'  # White

# Background
On_Black='\e[40m'  # Black
On_Red='\e[41m'    # Red
On_Green='\e[42m'  # Green
On_Yellow='\e[43m' # Yellow
On_Blue='\e[44m'   # Blue
On_Purple='\e[45m' # Purple
On_Cyan='\e[46m'   # Cyan
On_White='\e[47m'  # White

# High Intensity
IBlack='\e[0;90m'  # Black
IRed='\e[0;91m'    # Red
IGreen='\e[0;92m'  # Green
IYellow='\e[0;93m' # Yellow
IBlue='\e[0;94m'   # Blue
IPurple='\e[0;95m' # Purple
ICyan='\e[0;96m'   # Cyan
IWhite='\e[0;97m'  # White

# Bold High Intensity
BIBlack='\e[1;90m'   # Black
BIRed='\e[1;91m'     # Red
BIGreen='\e[7;92m'   # Green
BIYellow='\e[44;93m' # Yellow
BIBlue='\e[1;94m'    # Blue
BIPurple='\e[1;95m'  # Purple
BICyan='\e[1;96m'    # Cyan
BIWhite='\e[1;97m'   # White

# High Intensity backgrounds
On_IBlack='\e[0;100m'  # Black
On_IRed='\e[0;101m'    # Red
On_IGreen='\e[0;102m'  # Green
On_IYellow='\e[0;103m' # Yellow
On_IBlue='\e[0;104m'   # Blue
On_IPurple='\e[0;105m' # Purple
On_ICyan='\e[0;106m'   # Cyan
On_IWhite='\e[0;107m'  # White

#7=Background In same color like code with Black text

printmid() {
  local CHAR=$(printf "$@" | sed 's|\\e[[0-9;]*m||g' | wc -m)
  local hfCOLUMN=$((COLUMNS / 2))
  local hfCHAR=$((CHAR / 2))
  local indent=$((hfCOLUMN - hfCHAR))
  echo "$(printf '%*s' "${indent}" '') $@"
}

#Kill Game
am kill com.pubg.imobile &>/dev/null
am force-stop com.pubg.imobile &>/dev/null

am kill com.tencent.ig &>/dev/null
am force-stop com.tencent.ig &>/dev/null

am kill com.vng.pubgmobile &>/dev/null
am force-stop com.vng.pubgmobile &>/dev/null

am kill com.rekoo.pubgm &>/dev/null
am force-stop com.rekoo.pubgm &>/dev/null

am kill com.pubg.krmobile &>/dev/null
am force-stop com.pubg.krmobile &>/dev/null

am kill com.tencent.iglite &>/dev/null
am force-stop com.tencent.iglite &>/dev/null

menu() {
  echo -e '\n'
  printf "\033c"
  echo ""
  echo ""
  echo "${BIPurple}"
  echo ""
  echo "${N}"
  echo "${B}
░${N}${R}██████${G}╗${R}████████${G}╗${R}██████${G}╗${B}░${R}██████${G}╗${B}░
${R}██${G}╔════╝╚══${R}██${G}╔══╝${R}██${G}╔══${R}██${G}╗${R}██${G}╔══${R}██${G}╗
╚${R}█████${G}╗${B}░░░░${R}██${G}║${B}░░░${R}██████${G}╔╝${R}██████${G}╔╝
${B}░${G}╚═══${R}██${G}╗${B}░░░${R}██${G}║${B}░░░${R}██${G}╔══${R}██${G}╗${R}██${G}╔═══╝${B}░
${R}██████${G}╔╝${B}░░░${R}██${G}║${B}░░░${R}██${G}║${B}░░${R}██${G}║${R}██${G}║${B}░░░░░
${G}╚═════╝${B}░░░░${G}╚═╝${B}░░░${G}╚═╝${B}░░${G}╚═╝╚═╝${B}░░░░░${N}"
  echo ""
  echo "
${V}██${G}╗${B}██████${R}╗${Bl}░░${B}█████${R}╗${Bl}░${B}██████${R}╗${Bl}░${B}██${R}╗${B}███████${R}╗${B}██${R}╗${Bl}░░░${B}██${R}╗
${V}██${G}║${B}██${R}╔══${B}██${R}╗${B}██${R}╔══${B}██${R}╗${B}██${R}╔══${B}██${R}╗${B}██${R}║${B}██${R}╔════╝╚${B}██${R}╗${Bl}░${B}██${R}╔╝
${V}██${G}║${B}██████${R}╔╝${B}███████${R}║${B}██${R}║${Bl}░░${B}██${R}║${B}██${R}║${B}█████${R}╗${Bl}░░░${R}╚${B}████${R}╔╝${Bl}░
${V}██${G}║${B}██${R}╔═══╝${Bl}░${B}██${R}╔══${B}██${R}║${B}██${R}║${Bl}░░${B}██${R}║${B}██${R}║${B}██${R}╔══╝${Bl}░░░░${R}╚${B}██${R}╔╝${Bl}░░
${V}██${G}║${B}██${R}║${Bl}░░░░░${B}██${R}║${Bl}░░${B}██${R}║${B}██████${R}╔╝${B}██${R}║${B}██${R}║${Bl}░░░░░░░░${B}██${R}║${Bl}░░░
${G}╚═╝${R}╚═╝${Bl}░░░░░${R}╚═╝${Bl}░░${R}╚═╝╚═════╝${Bl}░${R}╚═╝╚═╝${Bl}░░░░░░░░${R}╚═╝${Bl}░░░
"
  echo ""
  echo ""
  echo "${R}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${N}"
  echo ""
  echo "${G}▌UNIVERSAL ▌All PUBG Packages ▌All Soc's ${N}"
  echo "${G}▌VERSION ▰${N} ${R}v3.0${N}"
  echo "${G}▌CODENAME ▰${N} ${R}PUBG IPADIFY${N}"
  echo ""
  echo "${R}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${N}"
  echo ""
  printmid "${YB}DEVICE INFORMATIONS..${N}"
  echo ""
  echo "${G}▌MODEL ▰${N}${R} $(getprop ro.build.product)${N}"
  echo "${G}▌DEVICE ▰${N}${R} $(getprop ro.product.model)${N}"
  echo "${G}▌BRAND ▰${N}${R} $(getprop ro.product.system.manufacturer)${N}"
  echo "${G}▌PROCESSOR ▰${N}${R} $(getprop ro.product.board)${N}"
  echo "${G}▌ANDROID VERSION ▰${N}${R} $(getprop ro.build.version.release)${N}"
  echo "${G}▌KERNEL ▰${N}${R} $(uname -r)${N}"
  echo ""
  echo -e "${R}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${N}"
  echo -e ""
  printmid "${YB}CREATOR - OWNER - GROUP - WEBSITE - DONATE${N}"
  echo -e ""
  echo -e "${G}▌ Created by:${N} ${R}CRANKV2${N}"
  echo -e ""
  echo -e "${V}[ GROUP ]${N} ${V}Join STRP x UNIVERSE!${N}"
  echo -e ""
  echo -e "${V}[ CHANNEL ]${N} ${V}Join STRP x NEWS CHANNEL!${N}"
  echo -e ""
  echo -e "${V}[ DONATE ]${N} ${V}Support us with a small donation!${N}"
  echo -e ""
  echo -e "${V}[ WEBSITE ]${N} ${V}Visit our new website!${N}"
  echo -e ""
  echo -e "${R}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${N}"
  echo -e ""
  printmid "${YB}Useful Options${N}"
  echo -e ""
  echo -e "${C}[ OPTIMIZE ]${N} ${G}Optimize installed packages (recommended ONLY once a week)!${N}"
  echo -e ""
  echo -e "${C}[ CAC ]${N} ${R}Clean all caches!${N}"
  echo -e ""
  echo -e "${C}[ GPU ]${N} ${Y}Clean GPU Cache${N}"
  echo -e ""
  echo -e "${R}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${N}"
  echo -e ""
  printmid "${YB}Choose a Version to Inject STRP IPAD VIEW Config!${N}"
  echo -e ""
  echo -e "${C}[ PGL ]${N} ${R}PUBG ▰ GLOBAL${N}"
  echo -e ""
  echo -e "${C}[ PBG ]${N} ${R}PUBG ▰ BGMI${N}"
  echo -e ""
  echo -e "${C}[ PL ]${N} ${R}PUBG ▰ LITE${N}"
  echo -e ""
  echo -e "${C}[ PKR ]${N} ${R}PUBG ▰ KOREAN${N}"
  echo -e ""
  echo -e "${C}[ PTW ]${N} ${R}PUBG ▰ TAIWAN${N}"
  echo -e ""
  echo -e "${C}[ PVN ]${N} ${R}PUBG ▰ VIETNAM${N}"
  echo -e ""
  echo -e "${G}[ FPS ]${N} ${B}Unlock 90FPS - Check out the new Module!${N}"
  echo -e ""
  echo -e "${R}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${N}"
  echo -e ""
  echo -e "${B}[ 0 ]${N} ${R}EXIT MENU!${N}"
  echo -e ""
  echo -e '\n'
  echo "${YB} Enter Value ${N} ${R}▰${N} ${C}\c"
  read option
  case "$option" in

  "FPS")
    am start -a android.intent.action.VIEW -d https://www.strp.blog/2023/09/strp-unlockers.html?m=1 &> /dev/null
    sleep 4
    menu
    ;;

  "PGL")
    am kill com.tencent.ig &>/dev/null
    am force-stop com.tencent.ig &>/dev/null
    clear
    echo "${YB}Choose an option for PUBG ▰ GLOBAL${N}"
    echo""
    echo "${G}1. ${Y}Ipad Max view"
    echo "${G}2. ${Y}Ipad Mini view"
    echo "${G}3. ${Y}IPhone 8 view"
    echo ""
    echo "${G}4. ${R}Back to main menu"
    echo ""
    echo "${C}Enter your choice: "
    read sub_option

    case "$sub_option" in
    1)
      # Ipad Max view option
      cp -af /data/adb/modules/STRPxIPADIFY/STRP/IpadMaxView /data/media/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Active.sav &>/dev/null
      chmod 664 /data/media/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Active.sav &>/dev/null
      echo "${G}DONE! Good Luck Soldier!${N}"
      echo "${R}No need to reboot, just hop into Game!${N}"
      sleep 3
      menu
      ;;

    2)
      # Ipad Mini view option
      cp -af /data/adb/modules/STRPxIPADIFY/STRP/IpadMiniView /data/media/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Active.sav &>/dev/null
      chmod 664 /data/media/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Active.sav &>/dev/null
      echo "${G}DONE! Good Luck Soldier!${N}"
      echo "${R}No need to reboot, just hop into Game!${N}"
      sleep 3
      menu
      ;;

    3)
      # iPhone 8 view option
      cp -af /data/adb/modules/STRPxIPADIFY/STRP/Iphone8View /data/media/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Active.sav &>/dev/null
      chmod 664 /data/media/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Active.sav &>/dev/null
      echo "${G}DONE! Good Luck Soldier!${N}"
      echo "${R}No need to reboot, just hop into Game!${N}"
      sleep 3
      menu
      ;;

    4)
      menu
      ;;

    *)
      echo "${R}Invalid choice. Please choose a valid option!${N}"
      sleep 2
      menu
      ;;
    esac
    ;;

  "PBG")
    am kill com.pubg.imobile &>/dev/null
    am force-stop com.pubg.imobile &>/dev/null
    clear
    echo "${YB}Choose an option for PUBG ▰ BGMI${N}"
    echo""
    echo "${G}1. ${Y}Ipad Max view"
    echo "${G}2. ${Y}Ipad Mini view"
    echo "${G}3. ${Y}IPhone 8 view"
    echo ""
    echo "${G}4. ${R}Back to main menu"
    echo ""
    echo "${C}Enter your choice: "
    read sub_option

    case "$sub_option" in
    1)
      # Ipad Max view option
      cp -af /data/adb/modules/STRPxIPADIFY/STRP/IpadMaxView /data/media/0/Android/data/com.pubg.imobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Active.sav &>/dev/null
      chmod 664 /data/media/0/Android/data/com.pubg.imobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Active.sav &>/dev/null
      echo "${G}DONE! Good Luck Soldier!${N}"
      echo "${R}No need to reboot, just hop into Game!${N}"
      sleep 3
      menu
      ;;

    2)
      # Ipad Mini view option
      cp -af /data/adb/modules/STRPxIPADIFY/STRP/IpadMiniView /data/media/0/Android/data/com.pubg.imobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Active.sav &>/dev/null
      chmod 664 /data/media/0/Android/data/com.pubg.imobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Active.sav &>/dev/null
      echo "${G}DONE! Good Luck Soldier!${N}"
      echo "${R}No need to reboot, just hop into Game!${N}"
      sleep 3
      menu
      ;;

    3)
      # iPhone 8 view option
      cp -af /data/adb/modules/STRPxIPADIFY/STRP/Iphone8View /data/media/0/Android/data/com.pubg.imobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Active.sav &>/dev/null
      chmod 664 /data/media/0/Android/data/com.pubg.imobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Active.sav &>/dev/null
      echo "${G}DONE! Good Luck Soldier!${N}"
      echo "${R}No need to reboot, just hop into Game!${N}"
      sleep 3
      menu
      ;;

    4)
      menu
      ;;

    *)
      echo "${R}Invalid choice. Please choose a valid option!${N}"
      sleep 2
      menu
      ;;
    esac
    ;;

  "PL")
    am kill com.tencent.iglite &>/dev/null
    am force-stop com.tencent.iglite &>/dev/null
    clear
    echo "${YB}Choose an option for PUBG ▰ LITE${N}"
    echo""
    echo "${G}1. ${Y}Ipad Max view"
    echo "${G}2. ${Y}Ipad Mini view"
    echo "${G}3. ${Y}IPhone 8 view"
    echo ""
    echo "${G}4. ${R}Back to main menu"
    echo ""
    echo "${C}Enter your choice: "
    read sub_option

    case "$sub_option" in
    1)
      # Ipad Max view option
      cp -af /data/adb/modules/STRPxIPADIFY/STRP/IpadMaxView /data/media/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Active.sav &>/dev/null
      chmod 664 /data/media/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Active.sav &>/dev/null
      echo "${G}DONE! Good Luck Soldier!${N}"
      echo "${R}No need to reboot, just hop into Game!${N}"
      sleep 3
      menu
      ;;

    2)
      # Ipad Mini view option
      cp -af /data/adb/modules/STRPxIPADIFY/STRP/IpadMiniView /data/media/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Active.sav &>/dev/null
      chmod 664 /data/media/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Active.sav &>/dev/null
      echo "${G}DONE! Good Luck Soldier!${N}"
      echo "${R}No need to reboot, just hop into Game!${N}"
      sleep 3
      menu
      ;;

    3)
      # iPhone 8 view option
      cp -af /data/adb/modules/STRPxIPADIFY/STRP/Iphone8View /data/media/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Active.sav &>/dev/null
      chmod 664 /data/media/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Active.sav &>/dev/null
      echo "${G}DONE! Good Luck Soldier!${N}"
      echo "${R}No need to reboot, just hop into Game!${N}"
      sleep 3
      menu
      ;;

    4)
      menu
      ;;

    *)
      echo "${R}Invalid choice. Please choose a valid option!${N}"
      sleep 2
      menu
      ;;
    esac
    ;;

  "PKR")
    am kill com.pubg.krmobile &>/dev/null
    am force-stop com.pubg.krmobile &>/dev/null
    clear
    echo "${YB}Choose an option for PUBG ▰ KOREAN${N}"
    echo""
    echo "${G}1. ${Y}Ipad Max view"
    echo "${G}2. ${Y}Ipad Mini view"
    echo "${G}3. ${Y}IPhone 8 view"
    echo ""
    echo "${G}4. ${R}Back to main menu"
    echo ""
    echo "${C}Enter your choice: "
    read sub_option

    case "$sub_option" in
    1)
      # Ipad Max view option
      cp -af /data/adb/modules/STRPxIPADIFY/STRP/IpadMaxView /data/media/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Active.sav &>/dev/null
      chmod 664 /data/media/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Active.sav &>/dev/null
      echo "${G}DONE! Good Luck Soldier!${N}"
      echo "${R}No need to reboot, just hop into Game!${N}"
      sleep 3
      menu
      ;;

    2)
      # Ipad Mini view option
      cp -af /data/adb/modules/STRPxIPADIFY/STRP/IpadMiniView /data/media/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Active.sav &>/dev/null
      chmod 664 /data/media/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Active.sav &>/dev/null
      echo "${G}DONE! Good Luck Soldier!${N}"
      echo "${R}No need to reboot, just hop into Game!${N}"
      sleep 3
      menu
      ;;

    3)
      # iPhone 8 view option
      cp -af /data/adb/modules/STRPxIPADIFY/STRP/Iphone8View /data/media/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Active.sav &>/dev/null
      chmod 664 /data/media/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Active.sav &>/dev/null
      echo "${G}DONE! Good Luck Soldier!${N}"
      echo "${R}No need to reboot, just hop into Game!${N}"
      sleep 3
      menu
      ;;

    4)
      menu
      ;;

    *)
      echo "${R}Invalid choice. Please choose a valid option!${N}"
      sleep 2
      menu
      ;;
    esac
    ;;

  "PTW")
    am kill com.rekoo.pubgm &>/dev/null
    am force-stop com.rekoo.pubgm &>/dev/null
    clear
    echo "${YB}Choose an option for PUBG ▰ TAIWAN${N}"
    echo""
    echo "${G}1. ${Y}Ipad Max view"
    echo "${G}2. ${Y}Ipad Mini view"
    echo "${G}3. ${Y}IPhone 8 view"
    echo ""
    echo "${G}4. ${R}Back to main menu"
    echo ""
    echo "${C}Enter your choice: "
    read sub_option

    case "$sub_option" in
    1)
      # Ipad Max view option
      cp -af /data/adb/modules/STRPxIPADIFY/STRP/IpadMaxView /data/media/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Active.sav &>/dev/null
      chmod 664 /data/media/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Active.sav &>/dev/null
      echo "${G}DONE! Good Luck Soldier!${N}"
      echo "${R}No need to reboot, just hop into Game!${N}"
      sleep 3
      menu
      ;;

    2)
      # Ipad Mini view option
      cp -af /data/adb/modules/STRPxIPADIFY/STRP/IpadMiniView /data/media/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Active.sav &>/dev/null
      chmod 664 /data/media/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Active.sav &>/dev/null
      echo "${G}DONE! Good Luck Soldier!${N}"
      echo "${R}No need to reboot, just hop into Game!${N}"
      sleep 3
      menu
      ;;

    3)
      # iPhone 8 view option
      cp -af /data/adb/modules/STRPxIPADIFY/STRP/Iphone8View /data/media/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Active.sav &>/dev/null
      chmod 664 /data/media/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Active.sav &>/dev/null
      echo "${G}DONE! Good Luck Soldier!${N}"
      echo "${R}No need to reboot, just hop into Game!${N}"
      sleep 3
      menu
      ;;

    4)
      menu
      ;;

    *)
      echo "${R}Invalid choice. Please choose a valid option!${N}"
      sleep 2
      menu
      ;;
    esac
    ;;

  "PVN")
    am kill com.vng.pubgmobile &>/dev/null
    am force-stop com.vng.pubgmobile &>/dev/null
    clear
    echo "${YB}Choose an option for PUBG ▰ VIETNAM${N}"
    echo""
    echo "${G}1. ${Y}Ipad Max view"
    echo "${G}2. ${Y}Ipad Mini view"
    echo "${G}3. ${Y}IPhone 8 view"
    echo ""
    echo "${G}4. ${R}Back to main menu"
    echo ""
    echo "${C}Enter your choice: "
    read sub_option

    case "$sub_option" in
    1)
      # Ipad Max view option
      cp -af /data/adb/modules/STRPxIPADIFY/STRP/IpadMaxView /data/media/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Active.sav &>/dev/null
      chmod 664 /data/media/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Active.sav &>/dev/null
      echo "${G}DONE! Good Luck Soldier!${N}"
      echo "${R}No need to reboot, just hop into Game!${N}"
      echo "${R}No need to reboot, just hop into Game!${N}"
      sleep 3
      menu
      ;;

    2)
      # Ipad Mini view option
      cp -af /data/adb/modules/STRPxIPADIFY/STRP/IpadMiniView /data/media/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Active.sav &>/dev/null
      chmod 664 /data/media/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Active.sav &>/dev/null
      echo "${G}DONE! Good Luck Soldier!${N}"
      echo "${R}No need to reboot, just hop into Game!${N}"
      sleep 3
      menu
      ;;

    3)
      # iPhone 8 view option
      cp -af /data/adb/modules/STRPxIPADIFY/STRP/Iphone8View /data/media/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Active.sav &>/dev/null
      chmod 664 /data/media/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Active.sav &>/dev/null
      echo "${G}DONE! Good Luck Soldier!${N}"
      echo "${R}No need to reboot, just hop into Game!${N}"
      sleep 3
      menu
      ;;

    4)
      menu
      ;;

    *)
      echo "${R}Invalid choice. Please choose a valid option!${N}"
      sleep 2
      menu
      ;;
    esac
    ;;

  "CAC")
    echo ""
    echo ""
    sleep 1
    echo "${G}Cleaning Cache......${N}"
    echo ""
    sleep 2
    # Sync before executing to avoid crashes
    sync

    # Clean phone
    rm -rf /storage/emulated/0/Android/*/.nomedia
    rm -rf /data/vendor/charge_logger/*
    rm -rf /data/data/*.txt
    rm -rf /data/log/*.log
    rm -rf /data/log/*.txt
    rm -rf /data/mlog/*
    rm -rf /data/resource-cache/*
    rm -rf /data/vendor/wlan_logs
    rm -rf /data/vendor/thermal/config
    rm -rf /data/vendor/thermal/thermal.dump
    rm -rf /data/vendor/thermal/last_thermal.dump
    rm -rf /data/vendor/thermal/thermal_history.dump
    rm -rf /data/vendor/thermal/thermal_history_last.dump
    rm -rf /data/*.log
    rm -rf /data/data/*.log
    rm -rf /cache/*
    rm -rf /data/*.txt
    rm -rf /dev/log/main
    rm -rf /data/dalvik-cache
    rm -rf /data/anr/*
    rm -rf /dev/log/*
    rm -rf /data/tombstones/*
    rm -rf /data/log_other_mode/*
    rm -rf /data/system/dropbox/*
    rm -rf /data/system/usagestats/*
    rm -rf /data/system/*.log
    rm -rf /data/system/*.txt
    rm -rf /data/system/shared_prefs/*
    rm -rf /data/log/*
    rm -rf /data/cache/*
    rm -rf /data/backup/*
    rm -rf /sys/kernel/debug/*
    rm -rf /data/local/*
    rm -rf /data/media/0/mtklog
    rm -rf /data/media/0/MIUI/Gallery
    rm -rf /data/media/0/MIUI/.debug_log
    rm -rf /data/media/0/MIUI/BugReportCache
    rm -rf /data/media/0/ramdump
    rm -rf /data/media/0/UnityAdsVideoCache
    rm -rf /data/media/0/*.log
    rm -rf /data/media/0/*.CHK
    rm -rf /data/media/0/duilite
    rm -rf /data/media/0/DkMiBrowserDemo
    rm -rf /data/media/0/.xlDownload
    rm -rf /data/media/0/LOST.DIR
    rm -rf /data/media/0/found000
    rm -rf /data/media/0/LazyList
    rm -rf /data/media/0/albumthumbs
    rm -rf /data/media/0/kunlun
    rm -rf /data/media/0/.CacheOfEUI
    rm -rf /data/media/0/.bstats
    rm -rf /data/media/0/.taobao
    rm -rf /data/media/0/Backucup
    rm -rf /data/media/0/MIUI/debug_log
    rm -rf /data/system/package_cache/*
    rm -rf /storage/emulated/0/*/.thumbnails
    rm -rf /data/logger/*
    rm -rf /sdcard/bugreports/*
    rm -rf /data/magisk_backup_*
    rm -rf /storage/emulated/0/Android/data/*/cache/*
    rm -rf /data/system_ce/0/recent_tasks/*
    rm -rf /data/system/cache/*
    rm -rf /data/vendor/cache/*
    rm -rf /data/misc/cache/*
    rm -rf /data/data/com.miui.yellowpage/*
    rm -rf /data/data/com.google.android.gms/app_dg_cache/*
    rm -rf /data/vendor/dropbox/*
    rm -rf /data/misc/dropbox/*
    rm -rf /data/app/preinstall_history/*
    rm -rf /data/system/tombstones/*
    rm -rf /data/vendor/tombstones/*
    rm -rf /data/misc/tombstones/*
    rm -rf /data/system_ce/0/recent_*/*
    rm -rf /data/system/trace/*
    rm -rf /data/vendor/trace/*
    rm -rf /data/misc/trace/*
    rm -rf /data/system/stats*/*
    rm -rf /data/vendor/stats*/*
    rm -rf /data/misc/stats*/*
    rm -rf /data/system/*stats/*
    rm -rf /data/vendor/*stats/*
    rm -rf /data/misc/*stats/*
    rm -rf /data/system/bootstat/*
    rm -rf /data/system/boottrace/*
    rm -rf /data/vendor/bootstat/*
    rm -rf /data/vendor/boottrace/*
    rm -rf /data/misc/bootstat/*
    rm -rf /data/misc/boottrace/*
    rm -rf /data/vendor/*_log/*
    rm -rf /data/misc/*_log/*
    rm -rf /data/system/*_logs/*
    rm -rf /data/vendor/*_logs/*
    rm -rf /data/misc/*_logs/*
    rm -rf /data/system/*_logger/*
    rm -rf /data/vendor/*_logger/*
    rm -rf /data/misc/*_logger/*
    rm -rf /data/traces/*
    rm -rf /data/logger*/*
    rm -rf /data/*logger/*
    rm -rf /storage/emulated/0/Android/data/com.zhiliaoapp.musically/*
    rm -rf /storage/emulated/0/Android/data/com.instagram.android/*
    rm -rf /storage/emulated/0/Android/data/com.twitter.android/*
    rm -rf /storage/emulated/0/Android/media/com.whatsapp/WhatsApp/.Shared
    rm -rf /storage/emulated/0/Android/media/com.whatsapp/WhatsApp/.StickerThumbs
    rm -rf /storage/emulated/0/Android/media/com.whatsapp/WhatsApp/.Thumbs
    rm -rf /storage/emulated/0/Android/media/com.whatsapp/WhatsApp/.trash
    rm -rf /storage/emulated/0/Android/media/com.whatsapp/WhatsApp/Backups
    rm -rf /storage/emulated/0/Android/media/com.whatsapp/WhatsApp/Databases
    rm -rf /storage/emulated/0/Fox
    sleep 1.5
    echo "${G}DONE!${N}"
    echo -ne '\n'
    sleep 2
    menu
    ;;
  "GPU")
    echo ""
    echo ""
    echo "${R}Please Wait....${N}"
    echo ""

    # Sync before executing to avoid crashes
    sync

    for i in "$(find /data -type f -name '*shader*')"; do
      rm -f $i
    done &> /dev/null
    echo ""
    echo "${G}Done!${N}"
    echo ""
    sleep 2
    menu
    ;;
  "OPTIMIZE")
    echo ""
    echo -e "${G}▌ Optimizing packages, this may take some time... ▌${N}"
    echo -e "${G}▌ You will return to the Main menu when all is DONE, so please WAIT! ▌${N}"
    pm compile -a -f --compile-layouts &>/dev/null
    cmd package bg-dexopt-job &>/dev/null
    sleep 2
    menu
    ;;
  "GROUP")
    am start -a android.intent.action.VIEW -d https://t.me/AndroidRootModulesCommunity &> /dev/null
    menu
    ;;
  "CHANNEL")
    am start -a android.intent.action.VIEW -d https://t.me/StratospherePerformance &> /dev/null
    menu
    ;;
  "DONATE")
    am start -a android.intent.action.VIEW -d https://www.paypal.com/donate/?hosted_button_id=ZYR8QRKTJ9NPU &> /dev/null
    menu
    ;;
  "WEBSITE")
    am start -a android.intent.action.VIEW -d https://www.strp.blog/?m=1 &> /dev/null
    menu
    ;;
  "0")
    echo ""
    echo ""
    echo "${G}▌See You Next Time Soldier, Good Luck !!▌${N}"
    sleep 1.5
    exit 0
    ;;
  *)
    echo ""
    echo "${R}▌Are You Blind Nigga?!!! .. TRY AGAIN..▌${N}"
    sleep 2.5
    printf "\033c"
    clear
    menu
    ;;
  esac
}
menu
