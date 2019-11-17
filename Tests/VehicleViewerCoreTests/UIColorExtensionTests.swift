import XCTest
@testable import VehicleViewerCore

final class UIColorExtensionTests: XCTestCase {
    
    func test_ColorExtension_should_provideExpectedColors() {
        _ = UIColor.lightBlue
        _ = UIColor.darkerGrayColor
        _ = UIColor.translucent
    }

    static var allTests = [
        ("test_ColorExtension_should_provideExpectedColors", test_ColorExtension_should_provideExpectedColors)
    ]
}
