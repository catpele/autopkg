#!/bin/bash

VERSION=$(curl https://www.jetbrains.com/updates/updates.xml | grep "<p>DataGrip" | tail -1 | awk '{print $2}')
echo $VERSION
curl -L -O https://download.jetbrains.com/datagrip/datagrip-${VERSION}.dmg