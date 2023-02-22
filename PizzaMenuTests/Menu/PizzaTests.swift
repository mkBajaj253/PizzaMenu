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
    // creating a non Gluten Base
    private let specialSundayPizza = Base(name: "Special Sunday", isVegan: true, allergens: ["Mustard"])
    
    // Example toppings
    private let tomatoSauce = Topping(name: "Tomato sauce", isVegan: true, allergens: [], type: .sauce )
    private let bbqSauce = Topping(name: "Barbecue sauce", isVegan: true, allergens: ["Mustard"], type: .sauce)
    private let mozzarella = Topping(name: "Mozzarella", isVegan: false, allergens: ["Milk"], type: .cheese)
    private let mushroom = Topping(name: "Mushrooms", isVegan: true, allergens: [], type: .topping)
    private let pepperoni = Topping(name: "Pepperoni", isVegan: false, allergens: ["Gluten", "Mustard"], type: .topping)
    
    
    func test_is_Pizza_Vegan_When_Both_ToppingAndBase_Are_Vegan() {
        
        // Create a ViewModel
        let viewModel = PizzaMenuViewModel()
        // Create a Pizza
        let pizza = Pizza(name: "Thin and Crispy Pizza", base: thinAndCrispyBase, toppings: [tomatoSauce, mushroom])
        XCTAssertTrue(viewModel.isPizzaVegan(pizza))
    }
    
    func test_is_Pizza_Vegan_When_BaseIsVegan_ToppingIsNot_Vegan() {
        
        // Create a ViewModel
        let viewModel = PizzaMenuViewModel()
        // Create a Pizza
        let pizza = Pizza(name: "Thin and Crispy Pizza", base: thinAndCrispyBase, toppings: [mozzarella, pepperoni])
        XCTAssertTrue(viewModel.isPizzaVegan(pizza))
    }
    
    func test_Is_Pizza_gluttenFre_Wnen_base_and_topping_are_GlutenFree() {
        
        // Create a ViewModel
        let viewModel = PizzaMenuViewModel()
        // Create a Pizza
        let pizza = Pizza(name: "Thin and Crispy Pizza", base: specialSundayPizza, toppings: [bbqSauce,mushroom])
        
        XCTAssertTrue(viewModel.isPizzaGlutenFre(pizza))
    }
    
    func test_Is_Pizza_gluttenFre_Wnen_baseIsGlutenFree_but_topping_isnot_GlutenFree() {
        
        // Create a ViewModel
        let viewModel = PizzaMenuViewModel()
        // Create a Pizza
        let pizza = Pizza(name: "Thin and Crispy Pizza", base: specialSundayPizza, toppings: [pepperoni])
        
        XCTAssertFalse(viewModel.isPizzaGlutenFre(pizza))
    }
    
    func testGetfAllallergens() {
        
        // Create a ViewModel
        let viewModel = PizzaMenuViewModel()
        // Create a Pizza
        let pizza = Pizza(name: "Thin and Crispy Pizza", base: pepperoniStuffedCrust, toppings: [tomatoSauce, pepperoni])
        
        let expectedAllergens = ["Gluten", "Mustard"]
        let returnedAllergens = viewModel.getAllAllergens(pizza)
        
        XCTAssertEqual(expectedAllergens, returnedAllergens)
        
    }
    
    func testGetSortedToppings() {
        
        // Create a ViewModel
        let viewModel = PizzaMenuViewModel()
        // Create a Pizza
        let pizza = Pizza(name: "my Pizza", base: specialSundayPizza, toppings: [pepperoni,mozzarella,tomatoSauce,mushroom])
        let sortedToppinsgs  = [mozzarella, mushroom, pepperoni,tomatoSauce]
        let returnedToppings = viewModel.getSortedToppings(pizza)
        
        XCTAssertEqual(sortedToppinsgs, returnedToppings)
        
    }
    
}
