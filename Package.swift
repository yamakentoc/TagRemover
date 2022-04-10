// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "TagRemover",
    products: [
        .executable(name: "TagRemover", targets: ["TagRemover"])
    ],
    dependencies: [
        .package(url: "https://github.com/scinfu/SwiftSoup", from: "2.2.0"),
        .package(url: "https://github.com/JohnSundell/Files", from: "3.1.0")
    ],
    targets: [
        .target(
            name: "TagRemoverCore",
            dependencies: ["SwiftSoup", "Files"]),
        .executableTarget(
            name: "TagRemover",
            dependencies: ["TagRemoverCore"]),
        .testTarget(
            name: "TagRemoverTests",
            dependencies: ["TagRemover"]),
    ]
)
