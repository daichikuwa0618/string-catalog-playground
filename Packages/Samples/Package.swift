// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Samples",
    products: [
        .library(name: "Samples", targets: ["Samples"]),
    ],
    targets: [
        .target(name: "Samples"),
        .testTarget(
            name: "SamplesTests",
            dependencies: ["Samples"]
        ),
    ]
)