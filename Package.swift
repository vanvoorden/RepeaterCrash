// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "MyExecutable",
  platforms: [
    .macOS(.v14)
  ],
  targets: [
    .target(
      name: "MyLibrary",
      swiftSettings: [.unsafeFlags(
        ["-enable-library-evolution"]
      )]
    ),
    .executableTarget(
      name: "MyExecutable",
      dependencies: ["MyLibrary"]
    )
  ]
)
