import XCTest
@testable import VehicleViewerCore

final class OnlineCarsNetworkManagerTests: XCTestCase {
    
    func test_OnlineCarsNetworkManager_should_haveAnAccessibleInitializer() {
        _ = OnlineCarsNetworkManager()
    }

    static var allTests = [
        ("test_OnlineCarsNetworkManager_should_haveAnAccessibleInitializer", test_OnlineCarsNetworkManager_should_haveAnAccessibleInitializer)
    ]
}
