// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AllAboutSwift",
    dependencies: [
       .package(url: "https://github.com/deepmind/open_spiel.git", .branch("master"))
    ],
    targets: [
        .target(
            name: "AllAboutSwift",
            dependencies: ["OpenSpiel"]),
        .target(
            name: "Main",
            dependencies: ["AllAboutSwift"]),
        .testTarget(
            name: "AllAboutSwiftTests",
            dependencies: ["AllAboutSwift"]),
    ]
)
