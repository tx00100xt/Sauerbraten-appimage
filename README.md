Sauerbraten-appimage
--------------------
[![Build status](https://github.com/tx00100xt/Sauerbraten-appimage/actions/workflows/appimage_ci.yml/badge.svg)](https://github.com/tx00100xt//Sauerbraten-appimage/actions/)
[![License: ZLIB](https://img.shields.io/badge/License-ZLIB-blue.svg)](https://raw.githubusercontent.com/tx00100xt/Sauerbraten-appimage/refs/heads/master/LICENSE)
[![GitHub release (latest by date)](https://img.shields.io/github/v/release/tx00100xt/Sauerbraten-appimage)](https://github.com/tx00100xt/Sauerbraten-appimage/releases/tag/2020.12.29)
[![Github downloads](https://img.shields.io/github/downloads/tx00100xt/Sauerbraten-appimage/total.svg?logo=github&logoColor=white&style=flat-square&color=E75776)](https://github.com/tx00100xt/Sauerbraten-appimage/releases/)

<h1 align="center">
  <img src="https://raw.githubusercontent.com/tx00100xt/Sauerbraten-appimage/main/AppDir/usr/share/icons/hicolor/128x128/apps/org.sauerbraten.Sauerbraten.png" alt="AppImage for Sauerbraten">
  <br/>
</h1>
<p align="center"><b>This is a AppImage for Sauerbraten</b>

## Why?
AppImage is a format for distributing portable software on Linux without needing superuser permissions to install the application  It tries also to allow Linux distribution-agnostic binary software deployment for application developers, also called Upstream packaging. Released first in 2004 under the name klik, it was continuously developed, then renamed in 2011 to PortableLinuxApps and later in 2013 to AppImage. [wikipedia](https://en.wikipedia.org/wiki/AppImage)

## Upstream
All credits here:  
http://sauerbraten.org/  
https://sourceforge.net/projects/sauerbraten/
## Running
Download the AppImages from the release page! Then, make the AppImage an executable by entering `chmod +x $FILE` in a terminal or by right-clicking the file then selecting "Properties" then "Permissions", and checking the executable checkbox. Then, double-`click the AppImage to run **Sauerbraten**. To add command line key enter in the terminal:
```
./Sauerbraten-2020.12.29-x86_64.AppImage -yourkey
```

## Game data
This package provides the engine and all data. Saved config files here:
```
    ~/.sauerbraten
```

## Verify
All AppImages are signed, including those compiled using GitHub Action.  
You can check the application signature by running the command in the terminal:
```
./Sauerbraten-2020.12.29-x86_64.AppImage --appimage-signature
```
Get keyid and verify:  
```
./Sauerbraten-2020.12.29-x86_64.AppImage --appimage-signature | gpg --list-packets | grep keyid

```
```
:signature packet: algo 1, keyid CDC41982C027BAAA
```
```
gpg --recv-keys --keyserver keyserver.ubuntu.com  CDC41982C027BAAA

```

### Build status
|CI|Platform|Compiler|Configurations|Platforms|Status|
|---|---|---|---|---|---|
|GitHub Actions|Ubuntu|GCC|Release|x64|![GitHub Actions Build Status](https://github.com/tx00100xt/Sauerbraten-appimage/actions/workflows/appimage_ci.yml/badge.svg)

You can download a the automatically build based on the latest commit.  
To do this, go to the [Actions tab], select the top workflows, and then Artifacts.

License
-------

* Sauerbraten is licensed under the ZLIB License (see LICENSE file).

[Actions tab]: https://github.com/tx00100xt//Sauerbraten-appimage/actions "Download Artifacts"
