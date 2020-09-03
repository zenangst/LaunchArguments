import Foundation

public protocol LaunchArgumentType: RawRepresentable, Hashable {
  init?(rawValue: String)
}
