#!/bin/bash
clear
cyan='\033[1;36m'
nc='\033[0m' # No color

echo -e "${cyan}Social Downloader - Multi-platform CLI Video Downloader${nc}"
echo "======================================================"
echo "1) Download from YouTube"
echo "2) Download from Instagram"
echo "3) Download from Twitter"
echo "4) Download from Facebook"
echo "5) Download from Pinterest"
echo "0) Exit"
echo "======================================================"
read -p "Choose a platform: " opt

case $opt in
  1) bash modules/download.sh youtube ;;
  2) bash modules/download.sh instagram ;;
  3) bash modules/download.sh twitter ;;
  4) bash modules/download.sh facebook ;;
  5) bash modules/download.sh pinterest ;;
  0) exit ;;
  *) echo "Invalid choice!" ;;
esac
