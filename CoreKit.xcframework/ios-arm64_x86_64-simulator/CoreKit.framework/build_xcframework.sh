rm -rf archive

# For iOS arm64 Device
xcodebuild archive \
-scheme CoreKit \
-configuration Release \
-destination 'generic/platform=iOS' \
-archivePath 'archives/CoreKit-iOS' \
SKIP_INSTALL=NO \
BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

# For Simulators
xcodebuild archive \
-scheme CoreKit \
-configuration Release \
-destination 'generic/platform=iOS Simulator' \
-archivePath 'archives/CoreKit-iOS-Simulator' \
SKIP_INSTALL=NO \
BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

# Create XCFramework
xcodebuild -create-xcframework \
-framework "archives/CoreKit-iOS.xcarchive/Products/Library/Frameworks/CoreKit.framework" \
-framework "archives/CoreKit-iOS-Simulator.xcarchive/Products/Library/Frameworks/CoreKit.framework" \
-output "CoreKit.xcframework"
