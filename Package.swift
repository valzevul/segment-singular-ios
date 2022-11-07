// swift-tools-version:5.1
import PackageDescription
let package = Package(
    name: "SegmentSingular",
    platforms: [.iOS(.v13)],
    products: [.library(name: "SegmentSingular", targets: ["SegmentSingular"])],
    dependencies: [
        .package(url: "https://github.com/segmentio/analytics-ios", from: "4.1.6"),
        .package(url: "https://github.com/singular-labs/Singular-iOS-SDK", from: "10.4.1")
    ],
    targets: [
        .target(
          name: "SegmentSingular",
          dependencies: ["Segment", .product(name: "Singular", package: "Singular")],
          path: "Segment-Singular-iOS/",
          publicHeadersPath: ""
        )
    ]
)
