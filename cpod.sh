carthage update --platform ios
export TMP_PROJECT_DIR=$(pwd)
pod install --verbose --no-repo-update
unset TMP_PROJECT_DIR
