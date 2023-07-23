import Foundation

enum FriendType {
    case alien, human, funnyAlien, funnyHuman
}

struct Friend: Identifiable {
    
    var id = UUID()
    var name: String
    var age: Int? = 0
    var phoneNumber: Int? = 0000000000
    var isFav = false
    
}
