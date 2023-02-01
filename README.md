# PizzaMenu


Please ensure you have the starter project running in Xcode

# Pizza Menu
This exercise involves manipulating data structures representing components of a pizza. These might be used in an app to allow users to customise and order a pizza from a menu.
In this system, pizzas are comprised of a base, and a collection of toppings.

# Pizzas
Pizza objects have the following properties:
A name
A Base
A collection of Toppings

# Bases
Base objects have the following properties:
A name
Whether this base is vegan
A list of allergens this base contains

# Toppings
Topping objects have the following properties:
A name
Whether this topping is vegan
A list of allergens this topping contains

* Example Topping and Base objects can be found in the test class.

# Task
   In the codebase you will find the Topping and Base objects already exist. The Pizza data
structure exists but is incomplete.
 1. Complete the Pizza data structure as described above
2. Create a function which works out whether a pizza is vegan (according to its components)
3. Create a function which works out whether a pizza is gluten-free
4. Create a function which provides a list of all allergens, in alphabetical order
5. All pizza toppings have a "type", which can be either Sauce (e.g. "tomato sauce"), Cheese (e.g.
"mozzarrella") or Topping (for any other type of topping, e.g. "mushrooms" or "ham"). Enhance the Topping data structure to include the concept of "topping type".
6. Create a function which returns all of a pizza's toppings, ordered by sauce, then cheese, then all other toppings (ordered alphabetically)

# Notes
Please concentrate on implementing and testing the business logic described above, rather than any app UI
Please take the time to fully test any code you write, before moving on from a task. Think carefully about test scenarios.
