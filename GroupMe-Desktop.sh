#!/bin/bash

npm install nativefier -g

nativefier https://web.groupme.com/chats \
  --name GroupMe \
  --single-instance \
  --platform linux
nativefier https://web.groupme.com/chats \
  --name GroupMe \
  --single-instance \
  --platform osx
nativefier https://web.groupme.com/chats \
  --name GroupMe \
  --single-instance \
  --platform win32

