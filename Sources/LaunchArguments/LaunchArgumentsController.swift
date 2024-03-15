import Foundation

public class LaunchArgumentsController<T: LaunchArgumentType>: @unchecked Sendable {
  private var storage = Set<T>()

  public init(arguments: [String] = CommandLine.arguments) {
    for argument in arguments {
      guard let launchArgument = T(rawValue: argument) else { continue }
      storage.insert(launchArgument)
    }
  }

  public func enable(_ launchArgument: T) {
    storage.insert(launchArgument)
  }

  public func disable(_ launchArgument: T) {
    storage.remove(launchArgument)
  }

  public func isEnabled(_ launchArgument: T) -> Bool {
    return storage.contains(launchArgument)
  }
}
