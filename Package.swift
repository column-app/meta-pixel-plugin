// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "MetaPixelPlugin",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "MetaPixelPlugin",
            targets: ["MetaPixelPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "MetaPixelPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm"),
                .product(name: "FBSDKCoreKit", package: "facebook-ios-sdk"),
                .product(name: "FBSDKLoginKit", package: "facebook-ios-sdk")
            ],
            path: "ios/Sources/MetaPixelPlugin"),
        .testTarget(
            name: "MetaPixelPluginTests",
            dependencies: ["MetaPixelPlugin"],
            path: "ios/Tests/MetaPixelPluginTests")
    ]
)