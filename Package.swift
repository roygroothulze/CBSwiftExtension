// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CBExtension",
    products: [
        .library(
            name: "CBExtension",
            targets: ["CBExtension"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "CBExtension",
            dependencies: []),
        .testTarget(
            name: "CBExtensionTests",
            dependencies: ["CBExtension"]),
    ]
)
