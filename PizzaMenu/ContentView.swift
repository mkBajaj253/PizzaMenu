import SwiftUI


struct ContentView: View {
    
    @StateObject var pizzaVM: PizzaViewModel
    
    private let newPizza = Pizza(name: "Hawaii",
                                 base: Base(name: "Thin and Crispy",
                                                            isVegan: true,
                                                            allergens: ["Gluten"]),
                                 topping: Topping(name: "Sauce", topingType: [TopingType(name: "mustard Sauce", isVegan: true, allergens: ["mutard"])]))
    
    private let thinAndCrispyBase = Base(name: "Thin and Crispy",
                                         isVegan: true,
                                         allergens: ["Gluten"])
    private let pepperoniStuffedCrust = Base(name: "Pepperoni Stuffed Crust",
                                             isVegan: false,
                                             allergens: ["Mustard", "Beer", "Gluten", "Hay"])
    private let mushroomTopping = Topping(name: "Sauce", topingType: [TopingType(name: "mustard Sauce", isVegan: true, allergens: ["mutard"])])
    
    private let tomatoTopping = Topping(name: "Sauce", topingType: [TopingType(name: "Tomato Sauce", isVegan: true, allergens: [])])
    
    
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
        }.onAppear {
            pizzaVM.isPizzaVegan(base: thinAndCrispyBase, topping: mushroomTopping.topingType[0])
            pizzaVM.isGlutenFree(base: pepperoniStuffedCrust, topping: mushroomTopping.topingType[0])
            pizzaVM.sortAllergans(base: pepperoniStuffedCrust)
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(pizzaVM: PizzaViewModel())
    }
}
