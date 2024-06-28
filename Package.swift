    // swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "LogicKit",
    products: [
        .library(name: "LogicKit", type: .static, targets: ["LogicKit", "LogicKitBuiltins"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"),
    ],
    targets: [
        .target(name: "LogicKit"),
        .target(name: "LogicKitBuiltins", dependencies: ["LogicKit"]),
        .testTarget(name: "LogicKitTests", dependencies: ["LogicKit"]),
        .testTarget(name: "LogicKitBuiltinsTests", dependencies: ["LogicKitBuiltins"]),
    ]
)



