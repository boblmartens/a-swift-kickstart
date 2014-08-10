import Foundation

var coffeeDrinks = ["Drip", "Espresso", "Americano", "Cappuccino", "Latte"]

func emphasize(var theContentsOf array:[String]) -> [String] {
    for i in 0 ..< array.count {
        array[i] = array[i].uppercaseString
    }
    return array
}

func emphasize() {
    for i in 0 ..< coffeeDrinks.count {
        coffeeDrinks[i] = coffeeDrinks[i].uppercaseString
    }
}

let emphasizedDrinks = emphasize(theContentsOf: coffeeDrinks)
emphasizedDrinks
coffeeDrinks

emphasize()
coffeeDrinks

coffeeDrinks = emphasize(theContentsOf: coffeeDrinks)
coffeeDrinks