rm -rf archives CoreKit.xcframework

# For iOS arm64 Device
xcodebuild archive \
-scheme CoreKit \
-configuration Release \
-destination 'generic/platform=iOS' \
-archivePath 'archives/CoreKit-iOS' \
SKIP_INSTALL=NO \
BUILD_LIBRARIES_FOR_DISTRIBUTION=YES \
ENABLE_BITCODE=YES \
STRIP_SWIFT_SYMBOLS=NO \
SWIFT_VERSION=5.0

# For iOS Simulator (x86_64 + arm64)
xcodebuild archive \
-scheme CoreKit \
-configuration Release \
-destination 'generic/platform=iOS Simulator' \
-archivePath 'archives/CoreKit-iOS-Simulator' \
SKIP_INSTALL=NO \
BUILD_LIBRARIES_FOR_DISTRIBUTION=YES \
ENABLE_BITCODE=YES \
STRIP_SWIFT_SYMBOLS=NO \
SWIFT_VERSION=5.0

# Create XCFramework
xcodebuild -create-xcframework \
-framework "archives/CoreKit-iOS.xcarchive/Products/Library/Frameworks/CoreKit.framework" \
-framework "archives/CoreKit-iOS-Simulator.xcarchive/Products/Library/Frameworks/CoreKit.framework" \
-output "CoreKit.xcframework"
