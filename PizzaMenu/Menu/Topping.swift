import Foundation

enum ToppingType {
    case sauce
    case cheese
    case topping
}

struct Topping: Equatable {
    let name: String
    let isVegan: Bool
    let allergens: [String]
    let type: ToppingType
}

