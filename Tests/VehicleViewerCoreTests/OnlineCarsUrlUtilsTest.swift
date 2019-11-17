import XCTest
@testable import VehicleViewerCore

final class OnlineCarsUrlUtilsTest: XCTestCase {
    
    func test_createCarsUrl_should_correctlyBuildTheUrl() {
        let carsUrl = OnlineCarsUrlUtils.createCarsUrl()
        XCTAssertEqual(carsUrl, "https://cdn.sixt.io/codingtask/cars")
    }

    static var allTests = [
        ("test_createCarsUrl_should_correctlyBuildTheUrl", test_createCarsUrl_should_correctlyBuildTheUrl)
    ]
}
