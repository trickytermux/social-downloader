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

# Prompt for URL
echo "Paste the $platform video URL:"
read url

# Fetch and show available video formats
echo
echo "Fetching available video formats..."
yt-dlp -F "$url"

# Let user choose a format code
echo
read -p "Enter the format code you want to download (e.g., 137+140 for best video+audio): " format_code

# Download the selected format
echo "Downloading video with format code: $format_code..."
yt-dlp -f "$format_code" "$url"

echo
echo "Download complete!"
