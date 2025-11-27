// swift-tools-version: 6.1

import PackageDescription

let package = Package(
  name: "ExpoModulesJSI",
  platforms: [.iOS(.v15)],
  products: [
    .library(
      name: "ExpoModulesJSI",
      targets: ["ExpoModulesJSI-Swift", "ExpoModulesJSI-Cxx"]
    ),
  ],
  dependencies: [

  ],
  targets: [
    .target(
      name: "ExpoModulesJSI-Swift",
      dependencies: ["ExpoModulesJSI-Cxx"],
      path: "ios",
    ),
    .target(
      name: "ExpoModulesJSI-Cxx",
      dependencies: [],
      path: "cpp",
    ),
  ]
)
