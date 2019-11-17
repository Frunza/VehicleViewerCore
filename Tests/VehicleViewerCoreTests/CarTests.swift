import XCTest
@testable import VehicleViewerCore

final class CarTests: XCTestCase {
    
    func test_carConstructor_should_correctlyBuildTheStruct() {
        let car = Car(id: "testId", name: "testName", make: "testMake", color: "testColor", series: "testSeries", fuelType: "testFuelType", fuelLevel: 111, transmission: "testTransmision", licensePlate: "testLicensePlate", latitude: 123, longitude: 456, innerCleanliness: "testInnerCleanliness", imageUrl: "testImageUrl")
        XCTAssertEqual(car.id, "testId")
        XCTAssertEqual(car.name, "testName")
        XCTAssertEqual(car.make, "testMake")
        XCTAssertEqual(car.color, "testColor")
        XCTAssertEqual(car.series, "testSeries")
        XCTAssertEqual(car.fuelType, "testFuelType")
        XCTAssertEqual(car.fuelLevel, 111)
        XCTAssertEqual(car.transmission, "testTransmision")
        XCTAssertEqual(car.licensePlate, "testLicensePlate")
        XCTAssertEqual(car.latitude, 123)
        XCTAssertEqual(car.longitude, 456)
        XCTAssertEqual(car.innerCleanliness, "testInnerCleanliness")
        XCTAssertEqual(car.imageUrl, "testImageUrl")
    }

    static var allTests = [
        ("test_carConstructor_should_correctlyBuildTheStruct", test_carConstructor_should_correctlyBuildTheStruct)
    ]
}
