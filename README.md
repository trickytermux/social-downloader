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

# Dependencies

yt-dlp: For downloading media.

ffmpeg: For converting audio/video.

python: Required for running yt-dlp.


These are automatically installed when you run the tool for the first time.


---

# Contribution

Pull requests are welcome! If you'd like to improve this tool or suggest new features, feel free to fork the repository and submit a PR.


---

**Support 🩷**

If you face any issues or need help:

Open an issue on the GitHub repo.

Contact me via GitHub: @trickytermux



---

License

This project is licensed under the [MIT License](LICENSE.md).


---

Made with love in Termux by @trickytermux
