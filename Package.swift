// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "ZippyJSON",
    platforms: [
        .iOS("7.0"),
        .tvOS(.v11),
        .macOS(.v10_13),
    ],
    products: [
        .library(
            name: "ZippyJSON",
            targets: ["ZippyJSON"]),
    ],
    dependencies: [
        .package(url: "https://github.com/JWIMaster/ZippyJSONCFamily", branch: "master"),
        .package(url: "https://github.com/JWIMaster/FoundationCompatKit.git", branch: "master"),
    ],
    targets: [
        .target(
            name: "ZippyJSON",
            dependencies: ["ZippyJSONCFamily", "FoundationCompatKit"]),
        .testTarget(
            name: "ZippyJSONTests",
            dependencies: ["ZippyJSON"],
            resources: [
                .copy("Models/apache_builds.json"),
                .copy("Models/canada.json"),
                .copy("Models/entities.json"),
                .copy("Models/github_events.json"),
                .copy("Models/marine_ik.json"),
                .copy("Models/mesh.json"),
                .copy("Models/numbers.json"),
                .copy("Models/random.json"),
                .copy("Models/twitter.json"),
                .copy("Models/twitter2.json"),
                .copy("Models/twitterescaped.json")
            ])
    ]
)
