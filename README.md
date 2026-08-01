<p align="center">
  <img src="https://user-images.githubusercontent.com/67187998/96374988-df9b9900-117e-11eb-9ade-9436c2859707.png" alt="BCHackTool" />
</p>

<h1 align="center">BCHackTool</h1>

<p align="center">
  <img src="https://img.shields.io/github/license/ByCh4n/BCHackTool" alt="License" />
  <img src="https://img.shields.io/github/stars/ByCh4n/BCHackTool?style=social" alt="Stars" />
</p>

An all-in-one launcher and installer for popular penetration-testing and OSINT
tools, built for **Kali Linux** and **Termux**. BCHackTool presents a colorized
menu, downloads the selected tools automatically, and runs them for you — so you
do not have to clone and configure each project by hand.

## Features

- Menu-driven access to a curated set of pentesting / OSINT tools
- Works on both **Kali Linux** and **Termux**
- Colorized interface with an auto-rotating banner
- One-key setup: dependencies and tools are installed on demand
- Helper flags for version, author info, and cleanup

## Requirements

- `bash`
- `git` and an active internet connection
- Root privileges on Kali Linux (`sudo`) — Termux runs without root
- A Kali Linux or Termux environment

## Installation

**Kali Linux**
```bash
git clone https://github.com/ByCh4n/BCHackTool
cd BCHackTool
chmod +x bchacktool.sh
sudo ./bchacktool.sh
```

**Termux**
```bash
git clone https://github.com/ByCh4n/BCHackTool
cd BCHackTool
chmod +x bchacktool-termux.sh
./bchacktool-termux.sh
```

## Usage

Run the script and pick a tool from the menu, or use one of the flags:

| Flag | Description |
|------|-------------|
| `-v`, `--version` | Show the script version |
| `-h`, `--help` | Show author and project information |
| `-s`, `--sil` | Remove tools downloaded by the script |

## Screenshots

![BCHackTool](https://user-images.githubusercontent.com/67187998/89713271-5b1ee400-d99f-11ea-8bf1-e364204e736d.PNG)
![BCHackTool](https://user-images.githubusercontent.com/67187998/89713272-5c501100-d99f-11ea-8bbd-5a1eed3c9fbf.PNG)

## Disclaimer

This project is provided for **authorized security testing and educational
purposes only**. Use it exclusively on systems you own or have explicit
permission to test. The author accepts no liability for misuse or any damage
caused by this tool.

## Author

**Hüseyin Altıntaş — ByCh4n**

- GitHub: [@ByCh4n](https://github.com/ByCh4n)
- LinkedIn: [huseyinaltns](https://www.linkedin.com/in/huseyinaltns/)
- X: [@huseyinaltns](https://x.com/huseyinaltns)

Special thanks to [@lazypwny751](https://github.com/lazypwny751) for helping
develop the project.

## License

Licensed under the [GPL-3.0](LICENSE) license.
