# ReusableUI

A lightweight SwiftUI component library distributed through **Swift Package Manager (SPM)**. The goal is to create reusable, configurable UI elements that can be shared across iOS applications.

## Requirements

- iOS 16 or later
- An Xcode/Swift toolchain compatible with the package manifest (currently `swift-tools-version: 6.4`)

## Installation

In Xcode:

1. Open your iOS app project.
2. Choose **File → Add Package Dependencies**.
3. Enter:

   ```text
   https://github.com/irfantotti5199/ReusableUI.git
   ```

4. Select a published version tag if available, or choose a branch-based dependency for development.
5. Add the **ReusableUI** library product to your application target.

Alternatively, once a compatible semantic-version tag has been published, add this to your app's `Package.swift`:

```swift
dependencies: [
    .package(
        url: "https://github.com/irfantotti5199/ReusableUI.git",
        from: "1.0.0"
    )
]
```

> The version-based example requires a published `1.0.0` tag. Do not use it until that tag exists.

## Usage

Import the module in your SwiftUI app:

```swift
import SwiftUI
import ReusableUI
```

The package is intended to expose reusable controls such as a `PrimaryButton`. Once that component is included in the package's public API, usage can look like:

```swift
PrimaryButton(title: "Login") {
    print("Login tapped")
}
```

You can customize available parameters based on the component's public initializer.

## Package structure

```text
ReusableUI/
├── Package.swift
├── Sources/
│   └── ReusableUI/
└── Tests/
    └── ReusableUITests/
```

## Development

Clone the repository:

```bash
git clone git@github.com:irfantotti5199/ReusableUI.git
cd ReusableUI
```

Open `Package.swift` in Xcode to develop and test the library.

## Releasing a new version

After validating the package and pushing changes to `main`, create a semantic-version Git tag:

```bash
git tag 1.0.0
git push origin 1.0.0
```

Only create this tag if it does not already exist. Use patch releases for fixes, minor releases for backward-compatible additions, and major releases for breaking API changes.

## Roadmap

- Configurable buttons and loading states
- Validated text fields
- Loading and empty-state views
- Accessibility and Dynamic Type support
- Component tests and examples

## Repository

Maintained at [irfantotti5199/ReusableUI](https://github.com/irfantotti5199/ReusableUI).
