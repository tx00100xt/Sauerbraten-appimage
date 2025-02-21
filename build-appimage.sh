#!/bin/sh

          #rm -fr sauerbraten
          rm -fr src

          #sudo apt-get update -qq
          #sudo apt-get install -qq -y libogg-dev libvorbis-dev libmpg123-dev &&
          #sudo apt-get install -qq -y zlib1g-dev libglew-dev libmpg123-dev libmpg123-0 libcurl4-nss-dev
          #sudo apt-get install -qq -y libsdl2-dev ibsdl2-2.0-0 libjack-dev
          #sudo add-apt-repository universe
          #sudo apt install -qq -y libsdl2-mixer-2.0-0 libsdl2-mixer-dev libsdl2-image-2.0-0 libsdl2-image-dev libjack-dev libjack0
          echo Remove the echo after 2025-04-01. The Ubuntu 20.04 Actions runner will be fully unsupported by 2025-04-01
          echo sudo apt install libfuse2 

          wget -nv -c https://github.com/linuxdeploy/linuxdeploy/releases/download/continuous/linuxdeploy-x86_64.AppImage
          chmod +x linuxdeploy-x86_64.AppImage

          wget -nc https://sourceforge.net/projects/sauerbraten/files/sauerbraten/2020_11_29/sauerbraten_2020_12_29_linux.tar.bz2
          tar xjpf sauerbraten_2020_12_29_linux.tar.bz2
          mv -f sauerbraten/data AppDir/usr/share/sauerbraten
          mv -f sauerbraten/packages AppDir/usr/share/sauerbraten
          cp -ax sauerbraten/src src

          patch -p1 < patches/0001-sauerbraten-AppImage.patch

          cd src
          make -j4
          cd ..

          cp -r src/sauer_client AppDir/usr/bin
          cp -r src/sauer_server AppDir/usr/bin
          #cp -vfr /usl/lib/x86_64-linux-gnu/libjack* AppDir/usr/lib

           SIGN=1 ./linuxdeploy-x86_64.AppImage --executable AppDir/usr/bin/sauer_client --desktop-file AppDir/usr/share/applications/org.sauerbraten.Sauerbraten.desktop --icon-file AppDir/usr/share/icons/hicolor/128x128/apps/org.sauerbraten.Sauerbraten.png --appdir AppDir --output appimage

          mv -f Sauerbraten-x86_64.AppImage Sauerbraten-2020.12.29-x86_64.AppImage

