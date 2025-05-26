// swift-tools-version:5.7

//  Package.swift
//  WFSUI
//
//  Created by Gerald Oluoch on 24/05/2025.
//

import PackageDescription

let package = Package(
    name: "WFSUI",
    defaultLocalization: "en",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "WFSUI",
            type: .static,
            targets: ["WFSUI"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "WFSUI",
            dependencies: [
            ],
            path: "WFSUI/Sources",
            resources: [
                .process("../Resources")
            ],
            plugins: [
            ]
        ),
        .testTarget(
            name: "WFSUITests",
            dependencies: [
                .byName(name: "WFSUI"),
            ],
            path: "WFSUI/Tests"
        ),
    ],
    swiftLanguageVersions: [.v5]
)
