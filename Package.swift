// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Extensions",
    platforms: [.macOS("10.12"), .iOS("10.0")],
    products: [
        .library(name: "Extensions", targets: ["Extensions"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "Extensions", dependencies: [], path: "Sources/"),
    ]
)
