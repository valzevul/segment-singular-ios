// swift-tools-version:5.1
import PackageDescription
let package = Package(
    name: "Segment-Singular",
    platforms: [
      .iOS(.v13),
    ],
    products: [
        .library(
            name: "Segment-Singular",
            targets: ["segment-singular-ios"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/segmentio/analytics-ios"),
        .package(url: "https://github.com/singular-labs/Singular-iOS-SDK")
    ],
    targets: [
        .target(
          name: "segment-singular-ios",
          dependencies: ["Analytics", "Singular-SDK"],
          path: "Segment-Singular-iOS/"
        )
    ]
)
