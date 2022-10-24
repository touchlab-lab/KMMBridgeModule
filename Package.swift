// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/touchlab-lab/KMMBridgeModule/KaMPKit/shared-kmmbridge/1.3.0/shared-kmmbridge-1.3.0.zip"
let remoteKotlinChecksum = "41df441d7c2733bd5fb716b1c3d4323cbed30def98410e8a0165e4e595d9da68"
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