// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let targetNames: [String] = [
    "StartHere",
]

let package = Package(
    name: "Samples",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "AllTargets",
            targets: targetNames + ["Utility"]
        ),
    ],
    targets: [
        .target(name: "Utility"),
    ] + targetNames.map { .target(name: $0, dependencies: ["Utility"]) }
)
