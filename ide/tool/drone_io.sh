if [ "$DRONE" = "true" ]; then
  curl -O https://dl.google.com/linux/direct/google-chrome-unstable_current_amd64.deb
  dpkg -L google-chrome-unstable_current_amd64.deb
  sudo dpkg -i google-chrome-unstable_current_amd64.deb
  sudo start xvfb
  export HAS_DARTIUM=true
fi

pub get

if [ "$DRONE" = "true" ]; then
#  dart tool/test_runner.dart --dartium --appPath=0.12.2143 --verbose
  /usr/bin/google-chrome-unstable --version
  dart tool/test_runner.dart --chrome-dev --appPath=0.12.2143 --verbose
else
  dart tool/test_runner.dart --browserPath=/Applications/dart/chromium/Chromium.app/Contents/MacOS/Chromium --appPath=0.12.2143 --verbose
fi
