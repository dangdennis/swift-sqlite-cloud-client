// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "sqlite-cloud-client",
  platforms: [
    .macOS(.v10_15)
  ],
  products: [
    // Products define the executables and libraries a package produces, making them visible to other packages.
    .library(
      name: "SqliteCloudClient",
      targets: ["SqliteCloudClient"])
  ],
  dependencies: [
    .package(url: "https://github.com/vapor/sql-kit.git", from: "3.0.0")
  ],
  targets: [
    // Targets are the basic building blocks of a package, defining a module or a test suite.
    // Targets can depend on other targets in this package and products from dependencies.
    .target(
      name: "SqliteCloudClient",
      dependencies: [
        // "sqcloud",
        "CLibreSSL",
        .product(name: "SQLKit", package: "sql-kit"),
      ]
    ),

    .testTarget(
      name: "SqliteCloudClientTests",
      dependencies: ["SqliteCloudClient"]),

    // .target(
    //   name: "sqcloud",
    //   dependencies: []
    // ),

    .binaryTarget(
      name: "LibSQCloud",
      path: "./Vendor/libsqcloud.xcframework"
    ),

    // .systemLibrary(
    //   name: "CLibreSSL",
    //   // pkgConfig: "libressl",
    //   providers: [
    //     .brew(["libressl"]),
    //     .apt(["libssl-dev"]),
    //   ]
    // ),

  ]
)
