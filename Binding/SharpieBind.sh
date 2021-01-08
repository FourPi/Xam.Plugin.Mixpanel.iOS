#!/bin/sh

./FetchFramework.sh

sharpie bind -namespace Xam.Plugin.Mixpanel.macOS -prefix NewBinding_macOS_ -sdk macosx10.15 -framework ./Frameworks/macOS/Mixpanel.framework
sharpie bind -namespace Xam.Plugin.Mixpanel.tvOS -prefix tvOS/NewBinding_ -sdk appletvos -framework ./Frameworks/tvOS/Mixpanel.framework
sharpie bind -namespace Xam.Plugin.Mixpanel.iOS -prefix iOS/NewBinding_ -sdk iphoneos -framework ./Frameworks/iOS/Mixpanel.framework
sharpie bind -namespace Xam.Plugin.Mixpanel.watchOS -prefix NewBinding_watchOS_ -sdk watchos -framework ./Frameworks/watchOS/Mixpanel.framework


