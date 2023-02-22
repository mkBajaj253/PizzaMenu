//
//  PizzaMenuViewModel.swift
//  PizzaMenu
//
//  Created by apple on 22/02/2023.
//

import Foundation

internal struct PizzaMenuViewModel {
    
    // determines in a pizza is vegan
    func isPizzaVegan(_ pizza: Pizza) -> Bool {
        
        guard pizza.base.isVegan else {
            return false
        }
        
        for topping in pizza.toppings {
            if !topping.isVegan {
                return false
            }
        }
        return true
    }
    
    // determines if a pizza is gluten free
    func isPizzaGlutenFre(_ pizza: Pizza) -> Bool {
        
        for allergen in pizza.base.allergens {
            if allergen.lowercased() == "gluten" {
                return false
            }
        }
        
        for topping in pizza.toppings {
            for allergen in topping.allergens {
                if allergen.lowercased() == "gluten" {
                    return false
                }
            }
        }
        return true
    }
    
    // lists all allergens in alphabetical order
    func getAllAllergens(_ pizza: Pizza) -> [String] {
        
        var allergens = Set<String>() // set will privent having duplicate values
        
        for allergen in pizza.base.allergens {
            allergens.insert(allergen)
        }
        
        for topping in pizza.toppings {
            for allergen in topping.allergens {
                allergens.insert(allergen)
            }
        }
        return Array(allergens).sorted()
    }
    
    // returns all toppings in the specific order
    func getSortedToppings(_ pizza: Pizza) -> [Topping] {
        
        var sauces = [Topping]()
        var cheeses = [Topping]()
        var toppings = [Topping]()
        
        for topping in pizza.toppings {
            switch topping.type {
            case .sauce:
                sauces.append(topping)
            case .cheese:
                cheeses.append(topping)
            case .topping:
                toppings.append(topping)
            }
        }
        sauces.sort(by: {$0.name < $1.name})
        cheeses.sort(by: {$0.name < $1.name})
        toppings.sort(by: {$0.name < $1.name})
        
        return sauces + cheeses + toppings
    }
    
}
