import XCTest
@testable import VehicleViewerCore

@available(iOS 13.0, *)
final class SFSymbolsTests: XCTestCase {
    
    func test_SFSymbols_should_successfullyLoadDefinedImages() {
        _ = SFSymbols.car
        _ = SFSymbols.map
        _ = SFSymbols.slashedEye
    }

    static var allTests = [
        ("test_SFSymbols_should_successfullyLoadDefinedImages", test_SFSymbols_should_successfullyLoadDefinedImages)
    ]
}
