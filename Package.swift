// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/touchlab-lab/KMMBridgeModule/KaMPKit/shared-kmmbridge/1.4.0/shared-kmmbridge-1.4.0.zip"
let remoteKotlinChecksum = "120a115a937cbbf821aa463442a053cd66a5fec7a6fd7335ef2b4f9342d2a7b8"
let packageName = "shared"

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)