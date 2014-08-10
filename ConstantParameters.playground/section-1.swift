import Foundation
var coffeeDrinks = ["Drip", "Espresso", "Americano", "Cappuccino", "Latte"]

func emphasize(inout array:[String], modification:(String) -> String) -> [String] {
    for i in 0 ..< array.count {
        array[i] = modification(array[i])
    }
    return array
}

emphasize(&coffeeDrinks) {$0 + "!"}
coffeeDrinks