// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LazyRandom",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "LazyRandom",
            targets: ["LazyRandom"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "LazyRandom"),
        .testTarget(
            name: "LazyRandomTests",
            dependencies: ["LazyRandom"]
        ),
    ]
)
