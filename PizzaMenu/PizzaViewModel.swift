//
//  PizzaViewModel.swift
//  PizzaMenu
//
//  Created by Kesh Gurung on 22/02/2023.
//

import Foundation

class PizzaViewModel: ObservableObject {
    
    
    //    function for vegan
        
    func isPizzaVegan(base: Base, topping: TopingType){
        if base.isVegan && topping.isVegan {
                print("the pizza is vegan")
            } else {
                print("it is not vegan")
            }
        }
        
        func isPizzaNotVegan(base: Base, topping: TopingType){
            if !base.isVegan || !topping.isVegan {
                print("the pizza is not vegan")
            } else {
                print("it is vegan")
            }
        }
        
    //    gluten free
        
    func isGlutenFree(base: Base, topping: TopingType){
            if base.allergens.contains("Gluten") && topping.allergens.contains("Gluten"){
                print("it has gluten")
            } else {
                print("it is gluten free")
            }
        }
        
    //   alphabetical order
        
    func sortAllergans(base: Base){
        let allerg = base.allergens.sorted()
        print(allerg)
           
        }
    
//    return pizza topping
    
    
}
