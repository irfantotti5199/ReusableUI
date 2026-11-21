// swift-tools-version: 6.4
// The swift-tools-version declares the minimum version of Swift required to build this package.


import PackageDescription

let package = Package(
    name: "ReusableUI",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "ReusableUI",
            targets: ["ReusableUI"]
        )
    ],
    targets: [
        .target(
            name: "ReusableUI"
        ),
        .testTarget(
            name: "ReusableUITests",
            dependencies: ["ReusableUI"]
        )
    ]
)
