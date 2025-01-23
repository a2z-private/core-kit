// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "CoreKit",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "CoreKit", 
            targets: ["CoreKit"])
    ],
    targets: [
        .binaryTarget(
            name: "CoreKit", 
            path: "CoreKit.xcframework")
    ])
