import Foundation

public struct OnlineCarsUrlUtils {
    
    // Resource URL constants
    private static let baseUrl = "https://cdn.sixt.io/codingtask"
    private static let carsResource = "/cars"
 
    public static func createCarsUrl() -> String {
        return "\(OnlineCarsUrlUtils.baseUrl)\(OnlineCarsUrlUtils.carsResource)"
    }
    
}
