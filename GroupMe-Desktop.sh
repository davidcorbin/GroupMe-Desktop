#!/bin/bash

set -x

rm -rf node_modules/ GroupMe-macOS.dmg
npm install
npm install nativefier -g

nativefier https://web.groupme.com/chats \
  --name GroupMe \
  --single-instance \
  --platform linux \
  --icon "icon.png" \
  --inject ./analytics.js \
  --inject ./groupme-custom.css
nativefier https://web.groupme.com/chats \
  --name GroupMe \
  --single-instance \
  --platform osx \
  --icon "icon.png" \
  --inject ./analytics.js \
  --inject ./groupme-custom.css
nativefier https://web.groupme.com/chats \
  --name GroupMe \
  --single-instance \
  --platform win32 \
  --icon "icon.png" \
  --inject ./analytics.js \
  --inject ./groupme-custom.css

./node_modules/appdmg/bin/appdmg.js spec.json GroupMe-macOS.dmg

