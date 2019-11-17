import XCTest
@testable import VehicleViewerCore

final class StringExtensionTests: XCTestCase {
    
    func test_emptyString_should_returnCorrectValue() {
        XCTAssertEqual(String.empty(), "")
    }

    static var allTests = [
        ("test_emptyString_should_returnCorrectValue", test_emptyString_should_returnCorrectValue)
    ]
}
