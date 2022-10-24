// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/touchlab-lab/KMMBridgeModule/KaMPKit/shared-kmmbridge/2.1.0/shared-kmmbridge-2.1.0.zip"
let remoteKotlinChecksum = "cf5db84be8ec0fc57282f54ab73713f3c34bbb702eeab12ce8bb0e12a3b3479e"
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