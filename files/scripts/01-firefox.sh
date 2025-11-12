#!/bin/bash

set -euo pipefail

# Install Firefox updates, if any
dnf5 install firefox -y --enablerepo=updates-testing

# FirefoxPWA Installation
# (native only, extension cannot be preinstalled due to Mozilla's distribution policy: https://www.mozilla.org/en-US/foundation/trademarks/distribution-policy/)

# Enable the repository
tee /etc/yum.repos.d/firefoxpwa.repo > /dev/null <<EOF
[firefoxpwa]
name=FirefoxPWA
metadata_expire=7d
baseurl=https://packagecloud.io/filips/FirefoxPWA/rpm_any/rpm_any/\$basearch
gpgkey=https://packagecloud.io/filips/FirefoxPWA/gpgkey
       https://packagecloud.io/filips/FirefoxPWA/gpgkey/filips-FirefoxPWA-912AD9BE47FEB404.pub.gpg
repo_gpgcheck=1
gpgcheck=1
enabled=1
EOF

# Import GPG key and update DNF cache
dnf5 -q makecache -y --disablerepo="*" --enablerepo="firefoxpwa"

# Install the package
dnf install firefoxpwa -y
