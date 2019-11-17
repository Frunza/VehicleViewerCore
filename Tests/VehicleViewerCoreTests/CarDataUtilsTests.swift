import XCTest
@testable import VehicleViewerCore

final class CarDataUtilsTests: XCTestCase {
    
    func test_healColor_should_correctlyRemoveUnwantedSymbols() {
        let healedColor = CarDataUtils.heal(color: "test_color")
        XCTAssertEqual(healedColor, "test color")
    }
    
    func test_healLicensePlate_should_correctlyRemoveUnwantedSymbols() {
        let healedLicensePlate = CarDataUtils.heal(licensePlate: "?test?License?Plate?")
        XCTAssertEqual(healedLicensePlate, "testLicensePlate")
    }

    static var allTests = [
        ("test_healColor_should_correctlyRemoveUnwantedSymbols", test_healColor_should_correctlyRemoveUnwantedSymbols),
        ("test_healLicensePlate_should_correctlyRemoveUnwantedSymbols", test_healLicensePlate_should_correctlyRemoveUnwantedSymbols)
    ]
}
