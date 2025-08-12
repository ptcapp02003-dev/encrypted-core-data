// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "EncryptedCoreData",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_14),
        .tvOS(.v12),
        .watchOS(.v5)
    ],
    products: [
        .library(
            name: "EncryptedCoreData",
            targets: ["EncryptedCoreData"]
        ),
    ],
    dependencies: [
        // 如果有外部依賴，在這裡添加
    ],
    targets: [
        .target(
            name: "EncryptedCoreData",
            dependencies: [],
            path: "Incremental Store", // 根據實際的原始碼路徑調整
            sources: [
                "."
            ],
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("."),
            ]
        ),
    ]
)