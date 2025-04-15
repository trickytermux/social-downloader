# Social Downloader

![GitHub repo size](https://img.shields.io/github/repo-size/trickytermux/social-downloader)
![GitHub stars](https://img.shields.io/github/stars/trickytermux/social-downloader?style=social)
![GitHub forks](https://img.shields.io/github/forks/trickytermux/social-downloader?style=social)
![License](https://img.shields.io/github/license/trickytermux/social-downloader)
![Platform](https://img.shields.io/badge/platform-Termux-blue)

> **Social Downloader** is a powerful Termux utility that lets you download videos and audio from your favorite social media platforms directly to your Android device.

---

## Features

- **Supports YouTube, Instagram, Twitter, Facebook, and Pinterest**
- **Choose between video or audio (MP3) downloads**
- **Simple command-line interface**
- **Fast and efficient using `yt-dlp`**
- **Lightweight and open-source**

---

## Installation

Open Termux and run the following commands:

**1. Update Termux Packages**
```bash
pkg update && pkg upgrade
```

**2. Install Git**
```bash
pkg install git -y
```
**3. Clone Tool**
```bash
git clone https://github.com/trickytermux/social-downloader
```

**4. Go to Directory**
```bash
cd social-downloader
```

**5. Make Executable**
```bash
chmod +x install.sh
```

**6. Make Downloader Executable**
```bash
chmod +x modules/download.sh
```

**7. Run The Tool**
```bash
./install.sh
```

**8. Make Updater Executable**
```bash
chmod +x update.sh
```

**9. Update Tool**
```bash
./update.sh
```

# Dependencies

yt-dlp: For downloading media.

ffmpeg: For converting audio/video.

python: Required for running yt-dlp.


These are automatically installed when you run the tool for the first time.

## 📽️ How to Use

2. Select the platform (e.g., YouTube, Instagram, Twitter, Facebook, or Pinterest) when prompted.


3. Paste the video URL when asked:

Paste the YouTube video URL:


4. The tool will show you a list of available video and audio formats, such as:

format code  extension  resolution  note
137          mp4        1080p       video only
140          m4a        audio only  audio
137+140      mp4        1080p       video + audio (merge)
...


5. Enter a valid format code like 137+140 to download video with audio merged.


6. The tool will automatically:

Download the selected video and audio streams

Merge them using ffmpeg

Save the final file in your current Termux directory


7. ✅ Done! Your video is now downloaded with full audio and video.

---

> ⚠️ Important Tips:

Always choose a merged format code like 137+140 to get both video and audio.

If you choose a video-only format (e.g., 137), the output will not have audio.

Make sure ffmpeg is installed correctly. The tool auto-installs it if missing.

---

Need help or found a bug? Check out the Support section below or open an issue.

---

# Contribution

Pull requests are welcome! If you'd like to improve this tool or suggest new features, feel free to fork the repository and submit a PR.


---

# Support ♥️

If you face any issues or need help:

Open an issue on the GitHub repo.

Contact me via GitHub: [@trickytermux](https://github.com/trickytermux)



---

# License

This project is licensed under the [MIT License](LICENSE.md).


---

Made with love in Termux by[@trickytermux](https://github.com/trickytermux)
