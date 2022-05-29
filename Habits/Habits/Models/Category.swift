//MARK: - Importing Frameworks
import Foundation

//MARK: - Structures
struct Category {
    //MARK: - Properties
    let name: String
    let color: Color
}

//MARK: - Extensions
extension Category: Codable {
    
}

extension Category: Hashable {
    //MARK: - Methods
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
    
    static func == (lhs: Category, rhs: Category) -> Bool {
        return lhs.name == rhs.name
    }
}
