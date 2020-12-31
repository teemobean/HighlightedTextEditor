// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FastNSTextStorage",
    products: [
        .library(
            name: "FastNSTextStorage",
            targets: ["FastNSTextStorage"]
        ),
    ],
    targets: [
        .target(
            name: "FastNSTextStorage",
            dependencies: [],
            path: "Sources/FastNSTextStorage",
            publicHeadersPath: "."
        )
    ]
)
