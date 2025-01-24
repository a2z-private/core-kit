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
            targets: ["CoreKitWrapper"])
    ],
    dependencies: [
      .package(url: "https://github.com/Swinject/Swinject.git", exact: "2.8.4"),
      .package(url: "https://github.com/malcommac/SwiftDate.git", exact: "7.0.0"),
      .package(url: "https://github.com/scalessec/Toast-Swift.git", from: "5.0.0")
    ],
    targets: [
        .target(
            name: "CoreKitWrapper",
            dependencies: [
              .product(name: "Swinject", package: "Swinject"),
              .product(name: "Toast", package: "Toast-Swift"),
              .product(name: "SwiftDate", package: "SwiftDate"),
              .target(name: "CoreKit"),
            ],
            path: "CoreKitWrapper"),
        .binaryTarget(
            name: "CoreKit", 
            path: "CoreKit.xcframework")
    ])
