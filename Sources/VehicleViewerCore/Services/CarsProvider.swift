import Foundation

public protocol CarsProviderProtocol {
    
    func loadCars(onSuccess: @escaping (([Car]) -> ()), onFailure: (() -> ())?)
    func loadCars() -> [Car]
    
}

public struct CarsProvider<DataProvider: CarsDataProviderProtocol>: CarsProviderProtocol {
        
    private var dataProvider: CarsDataProviderProtocol

    public init(dataProvider: CarsDataProviderProtocol) {
        self.dataProvider = dataProvider
    }
    
    public static func build(_ dataProvider: DataProvider) -> CarsProvider<DataProvider> {
        return CarsProvider<DataProvider>(dataProvider: dataProvider)
    }
        
    public func loadCars(onSuccess: @escaping (([Car]) -> ()), onFailure: (() -> ())?) {
        dataProvider.loadCars(onSuccess: { restCars in
            let cars = restCars.map { $0.asCar() }
            onSuccess(cars)
        }) { onFailure?() }
    }
    
    public func loadCars() -> [Car] {
        var cars = [Car]()
        let semaphore = DispatchSemaphore(value: 0)
        dataProvider.loadCars(onSuccess: { restCars in
            cars = restCars.map { $0.asCar() }
            semaphore.signal()
        }, onFailure: nil)
        semaphore.wait()
        return cars
    }
    
}
