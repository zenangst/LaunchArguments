# Launch arguments

## Description

Launch arguments can be super powerful for enabling and disabling features without having to modify
your codebase or use `#if DEBUG` statements.

## Usage

```swift
enum LaunchArgument: String, LaunchArgumentType {
  case debug, verboseLogging
}

/// By default, the controller will index arguments
/// coming from `CommandLine.arguments`
let argumentsController = LaunchArguments<LaunchArgument>()

if argumentsController.isEnabled(.debug) {
  // Do something when debug is enabled.
}

// Enable a feature at run-time
argumentsController.enabled(.verbose)

// Disable a feature at run-time
argumentsController.disable(.verbose)
```

## Author

Christoffer Winterkvist, christoffer@winterkvist.com

## License

**LaunchArguments** is available under the MIT license. See the [LICENSE](https://github.com/zenangst/LaunchArguments/blob/master/LICENSE.md) file for more info.

