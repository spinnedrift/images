# SPDX-License-Identifier: Apache-2.0
# Credits: renner0e on GitHub
# Default

set -euo pipefail

# Install jxl-utils temporarily for conversion
dnf5 install -y libjxl-utils

# Set default wallpaper
# sddm theme.conf uses .jxl for the background!
# default-dark currently point to the same file

# Convert KDE Path JPG to JXL
cjxl /usr/share/wallpapers/Path/contents/images/2560x1600.jpg /usr/share/backgrounds/Main/Main.jxl -e 10

# Symlink images
ln -sf /usr/share/backgrounds/Main/Main.jxl /usr/share/backgrounds/default.jxl
ln -sf /usr/share/backgrounds/Main/Main.jxl /usr/share/backgrounds/default-dark.jxl
ln -sf /usr/share/backgrounds/Main/main.xml /usr/share/backgrounds/default.xml

# Symlink SDDM image
ln -sf /usr/share/wallpapers/Path/contents/images/2560x1600.jpg /usr/share/sddm/themes/breeze/Main.jpg

# sets default/pinned applications on the taskmanager applet on the panel, there is no nice way to do this
# https://bugs.kde.org/show_bug.cgi?id=511560

sed -i '/<entry name="launchers" type="StringList">/,/<\/entry>/ s/<default>[^<]*<\/default>/<default>preferred:\/\/browser,applications:org.kde.konsole.desktop,applications:org.kde.discover.desktop,preferred:\/\/filemanager<\/default>/' /usr/share/plasma/plasmoids/org.kde.plasma.taskmanager/contents/config/main.xml

# Remove jxl-utiks
dnf5 remove -y libjxl-utils
