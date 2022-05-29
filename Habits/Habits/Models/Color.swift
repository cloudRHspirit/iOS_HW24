//MARK: - Importing Frameworks
import Foundation

//MARK: - Structures
struct Color {
    //MARK: - Properties
    let hue: Double
    let saturation: Double
    let brightness: Double
}

extension Color: Codable {
    enum CodingKeys: String, CodingKey {
        case hue = "h"
        case saturation = "s"
        case brightness = "b"
    }
}
