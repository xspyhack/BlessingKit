// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BlessingKit",
    platforms: [
        .macOS("13.0"),
        .iOS("16.0"),
        .macCatalyst("16.0")
    ],
    products: [
        .library(
            name: "BlessingKit",
            targets: ["BlessingKit"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "BlessingKit",
            dependencies: [],
            path: "Sources"
        )
    ]
)
