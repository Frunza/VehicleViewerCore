import Foundation

public struct CarDataUtils {
    
    public static func heal(licensePlate: String) -> String {
        return licensePlate.replacingOccurrences(of: "?", with: "")
    }
    
    public static func heal(color: String) -> String {
        return color.replacingOccurrences(of: "_", with: " ")
    }
    
}
