#!/bin/bash

platform=$1

# Install yt-dlp if missing
if ! command -v yt-dlp &>/dev/null; then
    echo "Installing yt-dlp..."
    pkg install -y python
    pip install yt-dlp
fi

# Install ffmpeg (also provides ffprobe) if missing
if ! command -v ffmpeg &>/dev/null || ! command -v ffprobe &>/dev/null; then
    echo "Installing ffmpeg..."
    pkg install -y ffmpeg
fi


# Check and install ffmpeg if missing
if ! command -v ffmpeg &>/dev/null || ! command -v ffprobe &>/dev/null; then
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
  ffmpeg_path=$(which ffmpeg)
  yt-dlp --extract-audio --audio-format mp3 --ffmpeg-location "$ffmpeg_path" "$url"
  ;;
  *)
    echo "Invalid choice!"
    ;;
esac

echo "Done!"
