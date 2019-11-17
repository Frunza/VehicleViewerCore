import XCTest
@testable import VehicleViewerCore

final class RestCarTests: XCTestCase {
    
    func test_restCarConstructor_should_correctlyBuildTheStruct() {
        let restCar = RestCar(id: "testId", modelIdentifier: "testModelIdentifier", modelName: "testModelName", name: "testName", make: "testMake", group: "testGroup", color: "testColor", series: "testSeries", fuelType: "testFuelType", fuelLevel: 111, transmission: "testTransmision", licensePlate: "testLicensePlate", latitude: 123, longitude: 456, innerCleanliness: "testInnerCleanliness", carImageUrl: "testImageUrl")
        XCTAssertEqual(restCar.id, "testId")
        XCTAssertEqual(restCar.modelIdentifier, "testModelIdentifier")
        XCTAssertEqual(restCar.modelName, "testModelName")
        XCTAssertEqual(restCar.name, "testName")
        XCTAssertEqual(restCar.make, "testMake")
        XCTAssertEqual(restCar.group, "testGroup")
        XCTAssertEqual(restCar.color, "testColor")
        XCTAssertEqual(restCar.series, "testSeries")
        XCTAssertEqual(restCar.fuelType, "testFuelType")
        XCTAssertEqual(restCar.fuelLevel, 111)
        XCTAssertEqual(restCar.transmission, "testTransmision")
        XCTAssertEqual(restCar.licensePlate, "testLicensePlate")
        XCTAssertEqual(restCar.latitude, 123)
        XCTAssertEqual(restCar.longitude, 456)
        XCTAssertEqual(restCar.innerCleanliness, "testInnerCleanliness")
        XCTAssertEqual(restCar.carImageUrl, "testImageUrl")
    }
    
    func test_restCarConstructor_should_correctlyConvertToCar() {
        let restCar = RestCar(id: "testId", modelIdentifier: "testModelIdentifier", modelName: "testModelName", name: "testName", make: "testMake", group: "testGroup", color: "testColor", series: "testSeries", fuelType: "testFuelType", fuelLevel: 111, transmission: "testTransmision", licensePlate: "testLicensePlate", latitude: 123, longitude: 456, innerCleanliness: "testInnerCleanliness", carImageUrl: "testImageUrl")
        let car = restCar.asCar()
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
        ("test_restCarConstructor_should_correctlyBuildTheStruct", test_restCarConstructor_should_correctlyBuildTheStruct),
        ("test_restCarConstructor_should_correctlyConvertToCar", test_restCarConstructor_should_correctlyConvertToCar)
    ]
}
