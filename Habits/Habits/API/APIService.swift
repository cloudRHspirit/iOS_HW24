//MARK: - Importing Frameworks
import Foundation

//MARK: - Structures
struct HabitRequest: APIRequest {
    typealias Response = [String: Habit]
    
    //MARK: - Properties
    var habitName: String?
    var path: String { "/habits" }
}

struct UserRequest: APIRequest {
    typealias Response = [String: User]
    
    var path: String { "/users" }
}
