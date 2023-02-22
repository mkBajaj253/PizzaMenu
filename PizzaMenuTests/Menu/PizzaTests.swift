import XCTest
@testable import PizzaMenu

class PizzaTests: XCTestCase {
    // Example bases
    private let thinAndCrispyBase = Base(name: "Thin and Crispy",
                                         isVegan: true,
                                         allergens: ["Gluten"])
    private let pepperoniStuffedCrust = Base(name: "Pepperoni Stuffed Crust",
                                             isVegan: false,
                                             allergens: ["Mustard", "Gluten"])
    // Example toppings
    
    private let sauceTypes = Topping(name: "Sauce", topingType: [TopingType(name: "Tomato Sauce", isVegan: true, allergens: []), TopingType(name: "mustard Sauce", isVegan: true, allergens: ["mutard"])])
}
