import Foundation

public protocol CarsDataProviderProtocol {
    
    func loadCars(onSuccess: @escaping (([RestCar]) -> ()), onFailure: (() -> ())?)
    
}
