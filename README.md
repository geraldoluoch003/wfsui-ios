# WFSUI

A SwiftUI component library for iOS applications.

## Installation

### Swift Package Manager

Add the following to your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/yourusername/WFSUI.git", from: "1.0.0")
]
```

Or add it directly in Xcode:
1. Go to File > Add Packages
2. Enter the repository URL: `https://github.com/yourusername/WFSUI.git`
3. Click Add Package

## Usage

Import the package in your Swift file:

```swift
import WFSUI
```

### Components

#### Spinner

```swift
import WFSUI

struct ContentView: View {
    var body: some View {
        // Add your spinner component here
    }
}
```

## Demo App

The repository includes a demo app that showcases all available components. To run the demo:

1. Clone the repository
2. Open the `App` directory
3. Run `tuist generate` to generate the Xcode project
4. Open the generated `.xcworkspace` file
5. Build and run the project

## Requirements

- iOS 14.0+
- Xcode 12.0+
- Swift 5.5+

## License

This project is licensed under the MIT License - see the LICENSE file for details. 
