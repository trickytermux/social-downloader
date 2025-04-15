#!/bin/bash

platform=$1

# Install yt-dlp if missing
if ! command -v yt-dlp &>/dev/null; then
    echo "Installing yt-dlp..."
    pkg install -y python
    pip install yt-dlp
fi

# Install ffmpeg if missing (ffprobe is included)
if ! command -v ffmpeg &>/dev/null || ! command -v ffprobe &>/dev/null; then
    echo "Installing ffmpeg..."
    pkg install -y ffmpeg
fi

# Prompt for URL
echo "Paste the $platform video URL:"
read url

# Fetch and show available formats
echo
echo "Fetching available video and audio formats..."
yt-dlp -F "$url"

echo
echo "Choose a format code for both video+audio (example: 137+140 for 1080p + audio)"
read -p "Enter the format code: " format_code

# Download and merge video + audio
echo
echo "Downloading video with audio..."
yt-dlp -f "$format_code" "$url"

echo
echo "Download complete!"
