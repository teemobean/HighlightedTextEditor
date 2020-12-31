// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

public let package = Package(
    name: "HighlightedTextEditor",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "HighlightedTextEditor",
            targets: ["HighlightedTextEditor"]),
    ],
    dependencies: [
        .package(url: "https://github.com/kyle-n/FastNSTextStorage", from: Version("1.0.0"))
    ],
    targets: [
        .target(
            name: "HighlightedTextEditor",
            dependencies: ["FastNSTextStorage"]
        )
    ]
)
