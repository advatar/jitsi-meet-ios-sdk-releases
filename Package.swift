// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "JitsiMeetSDK",
    platforms: [
         .iOS(.v11)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "JitsiMeetSDK",
            targets: ["JitsiMeet", "WebRTC"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "JitsiMeetSDK"
        ),
        .binaryTarget(
            name: "JitsiMeet",
            path: "Frameworks/JitsiMeet.framework"
        ),
        .binaryTarget(
            name: "WebRTC",
            path: "Frameworks/WebRTC.framework"
        )
        
    ]
)