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

struct HabitStatisticsRequest: APIRequest {
    typealias Response = [HabitStatistics]
    
    var habitNames: [String]?
    
    var path: String { "/habitStats" }
    
    var queryItems: [URLQueryItem]? {
        if let habitNames = habitNames {
            return [URLQueryItem(name: "names", value: habitNames.joined(separator: ","))]
        } else {
            return nil
        }
    }
}
