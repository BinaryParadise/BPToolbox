// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Lotus",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(
            name: "Files",
            url: "https://github.com/johnsundell/files.git",
            from: "4.2.0"
        ),
        .package(url: "https://github.com/apple/swift-argument-parser", from: "0.4.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "LotusTool",
            dependencies: ["LotusCore"]),
        .target(
            name: "LotusCore",
            dependencies: ["Files",
                           .product(name: "ArgumentParser", package: "swift-argument-parser")]
        ),
        .testTarget(
            name: "LotusTests",
            dependencies: ["LotusTool"]),
    ]
)
