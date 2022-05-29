//MARK: - Importing Frameworks
import Foundation

//MARK: - Enums
enum ViewModel {
    enum Section: Hashable, Comparable {
        case favorites
        case category(_ category: Category)
        
        static func < (lhs: Section, rhs: Section) -> Bool {
            switch (lhs, rhs) {
            case (.category(let l), .category(let r)):
                return l.name < r.name
            case (.favorites, _):
                return true
            case (_, .favorites):
                return false
            }
        }
    }
    typealias Item = Habit
}
