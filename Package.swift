// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/touchlab-lab/KMMBridgeModule/KaMPKit/shared-kmmbridge/1.4.1/shared-kmmbridge-1.4.1.zip"
let remoteKotlinChecksum = "9522c261dd4eecc877589396052b8c5c408f7e5b1cbdecf5bf13e9f17546920d"
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