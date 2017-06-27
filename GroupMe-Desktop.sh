#!/bin/bash

npm install -g nativefier appdmg

nativefier https://web.groupme.com/chats \
  --name GroupMe \
  --single-instance \
  --platform linux \
  --inject ./analytics.js \
  --inject ./groupme-custom.css
nativefier https://web.groupme.com/chats \
  --name GroupMe \
  --single-instance \
  --platform osx \
  --inject ./analytics.js \
  --inject ./groupme-custom.css
nativefier https://web.groupme.com/chats \
  --name GroupMe \
  --single-instance \
  --platform win32 \
  --inject ./analytics.js \
  --inject ./groupme-custom.css

appdmg spec.json GroupMe-macOS.dmg

