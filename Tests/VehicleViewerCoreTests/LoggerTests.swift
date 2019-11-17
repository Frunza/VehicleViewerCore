import XCTest
@testable import VehicleViewerCore

final class LoggerTests: XCTestCase {
    
    func test_log_should_notThrow() {
        Logger.log("testMessage")
    }

    static var allTests = [
        ("test_log_should_notThrow", test_log_should_notThrow)
    ]
}
