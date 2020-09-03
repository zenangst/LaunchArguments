import Foundation
import XCTest
import LaunchArguments

class LaunchArgumentsTests: XCTestCase {
  func testLaunchArguments() {
    let controller = LaunchArgumentsController<LaunchArgument>(arguments: [
      "foo", "bar"
    ])

    XCTAssertTrue(controller.isEnabled(.foo))
    XCTAssertTrue(controller.isEnabled(.bar))
    XCTAssertFalse(controller.isEnabled(.baz))

    controller.enable(.baz)
    XCTAssertTrue(controller.isEnabled(.baz))

    controller.disable(.baz)
    XCTAssertFalse(controller.isEnabled(.baz))
  }
}

fileprivate enum LaunchArgument: String, LaunchArgumentType {
  case foo, bar, baz
}
