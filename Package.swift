// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "APSSPMediationAdForus",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "APSSPMediationAdForus", targets: ["APSSPMediationAdForus"]),
    ],
    dependencies: [
        .package(url: "https://github.com/IGAWorksDev/ap-APSSPSDK-SPM.git", from: "3.4.0"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "13.6.0"),
    ],
    targets: [
        .target(name: "APSSPMediationAdForus",
                dependencies: [
                    .product(name: "APSSPSDK", package: "ap-APSSPSDK-SPM"),
                    .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                ],
                path: "Sources/MediationAdForus"),
    ]
)
