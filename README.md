# DATA‑BOY Auto‑Start Setup
you need this file to make data-boy ai to work

DATA‑BOY includes a startup script (start-databoy.bat).  
This guide explains how to make it run automatically on Windows, Linux, and macOS.

---

# 🪟 Windows — Add the .bat File to Startup

1. Press:
   Win + R

2. Type:
   shell:startup

3. Press Enter.

4. Move your provided file:
   start-databoy.bat
   into the Startup folder.

Windows will now run DATA‑BOY automatically every time you log in.

---

# 🐧 Linux — Run the Windows .bat File at Startup

Linux cannot run .bat files directly.  
You must **call the .bat file through Wine** at startup.

## 1. Install Wine (if not installed)
sudo apt install wine

## 2. Create an autostart entry
mkdir -p ~/.config/autostart
nano ~/.config/autostart/databoy.desktop

## 3. Paste this inside:
[Desktop Entry]
Type=Application
Exec=wine /path/to/start-databoy.bat
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name=DATA-BOY Auto Start

Replace `/path/to/start-databoy.bat` with the full path to your file.

Linux will now run the .bat file automatically at login.

---

# 🍎 macOS — Run the Windows .bat File at Startup

macOS cannot run .bat files directly.  
You must **call the .bat file using Wine** through a small launcher script.

## 1. Install Wine (if not installed)
brew install --cask wine-stable

## 2. Create a launcher script
nano ~/databoy-startup.command

## 3. Paste this inside:
#!/bin/bash
wine /path/to/start-databoy.bat

Replace `/path/to/start-databoy.bat` with the full path.

## 4. Make it executable
chmod +x ~/databoy-startup.command

## 5. Add it to Login Items
System Settings → General → Login Items → “Open at Login” → +

Select:
databoy-startup.command

macOS will now run the .bat file automatically at login.

---

# Summary

- **Windows:** place the provided
