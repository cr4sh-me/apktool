#!/bin/bash

APKTOOL_VERSION="2.9.3"
APKTOOL_FILENAME="apktool_$APKTOOL_VERSION.jar"

rm -f apktool_*.jar
wget https://bitbucket.org/iBotPeaches/apktool/downloads/$APKTOOL_FILENAME

echo '#!/usr/bin/bash' > /opt/cybertools/bin/apktool
echo "java -jar /opt/cybertools/apktool/$APKTOOL_FILENAME \"\$@\"" >> /opt/cybertools/bin/apktool
chmod +x /opt/cybertools/bin/apktool
