#!/bin/bash

platform=$1

# Install dependencies
if ! command -v yt-dlp &>/dev/null; then
    echo "Installing yt-dlp and dependencies..."
    pkg install -y python ffmpeg
    pip install yt-dlp
fi

# Ensure ffmpeg is available
if ! command -v ffmpeg &>/dev/null; then
    echo "Installing ffmpeg..."
    pkg install -y ffmpeg
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
    echo "Downloading audio only (MP3)..."
    yt-dlp -x --audio-format mp3 --ffmpeg-location "$(which ffmpeg)" "$url"
    ;;
  *)
    echo "Invalid choice!"
    ;;
esac

echo "Done!"
