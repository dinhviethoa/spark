if [ "$DRONE" = "true" ]; then
  dart tool/test_runner.dart --browserPath=/Applications/dart/chromium/Chromium.app/Contents/MacOS/Chromium --appPath=0.12.2143_0
else
  dart tool/test_runner.dart --dartium --appPath=0.12.2143_0
fi
