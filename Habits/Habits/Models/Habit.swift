//MARK: - Importing Frameworks
import Foundation

//MARK: - Structures
struct Habit {
    //MARK: - Properties
    let name: String
    let category: Category
    let info: String
}

//MARK: - Extensions
extension Habit: Codable {
    
}

extension Habit: Hashable {
    //MARK: - Methods
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
    
    static func == (lhs: Habit, rhs: Habit) -> Bool {
        return lhs.name == rhs.name
    }
}

extension Habit: Comparable {
    static func < (lhs: Habit, rhs: Habit) -> Bool {
        return lhs.name < rhs.name
    }
}
