// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AozoraHistory",
    platforms: [
        .macOS(.v12)
    ],
    products: [
        .executable(name: "AozoraHistoryApp", targets: ["AozoraHistoryApp"])
    ],
    targets: [
        .target(name: "AozoraHistory"),
        .executableTarget(name: "AozoraHistoryApp", dependencies: ["AozoraHistory"]),
        .testTarget(name: "AozoraHistoryTests", dependencies: ["AozoraHistory"])
    ]
)
