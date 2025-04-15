#!/bin/bash

platform=$1

# Install yt-dlp if not already installed
if ! command -v yt-dlp &>/dev/null; then
    echo "Installing yt-dlp and dependencies..."
    pkg install -y python ffmpeg
    pip install yt-dlp
fi

echo "Paste the $platform video URL:"
read url
echo "Select format:"
echo "1) Best Video"
echo "2) Audio Only (MP3)"
read -p "Your choice: " format

case $format in
  1)
    echo "Downloading best video..."
    yt-dlp -f best "$url"
    ;;
  2)
    echo "Downloading audio only..."
    yt-dlp -x --audio-format mp3 "$url"
    ;;
  *)
    echo "Invalid choice!"
    ;;
esac

echo "Done!"
