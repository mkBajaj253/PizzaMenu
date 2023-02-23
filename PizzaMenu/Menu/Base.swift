import Foundation

struct Base: Codable {
    let name: String
    let isVegan: Bool
    var allergens: [String]
}

//struct Allergens: Codable {
//    let name: String
//}
