import Foundation

struct Topping: Codable {
    let name: String
    let topingType: [TopingType]
}

struct TopingType: Codable {
    let name: String
    let isVegan: Bool
    let allergens: [String]
}


