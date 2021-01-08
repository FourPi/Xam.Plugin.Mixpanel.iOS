#!/bin/sh

rm -rf *.framework
rm -rf Frameworks

mkdir -p Frameworks/macOS/
mkdir -p Frameworks/tvOS/
mkdir -p Frameworks/iOS/
mkdir -p Frameworks/watchOS/

./carthage-build.sh --platform macOS
cp -r Carthage/Build/Mac/Mixpanel.framework Frameworks/macOS/Mixpanel.framework


./carthage-build.sh --platform iOS,watchOS,tvOS
cp -r Carthage/Build/tvOS/Mixpanel.framework Frameworks/tvOS/Mixpanel.framework
cp -r Carthage/Build/iOS/Mixpanel.framework Frameworks/iOS/Mixpanel.framework
cp -r Carthage/Build/watchOS/Mixpanel.framework Frameworks/watchOS/Mixpanel.framework

rm -rf Carthage
