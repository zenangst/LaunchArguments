// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "LaunchArguments",
    products: [
        .library(name: "LaunchArguments", targets: ["LaunchArguments"]),
    ],
    targets: [
        .target(
            name: "LaunchArguments",
            dependencies: []),
        .testTarget(
            name: "LaunchArgumentsTests",
            dependencies: ["LaunchArguments"]),
    ]
)
