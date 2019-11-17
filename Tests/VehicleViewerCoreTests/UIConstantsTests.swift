import XCTest
@testable import VehicleViewerCore

final class UIConstantsTests: XCTestCase {
    
    func test_UIConstants_should_provideExpectedConstants() {
        _ = UIConstants.loadingCarsText
        _ = UIConstants.loadingText
    }

    static var allTests = [
        ("test_UIConstants_should_provideExpectedConstants", test_UIConstants_should_provideExpectedConstants)
    ]
}
