import Foundation
var coffeeDrinks = ["Drip", "Espresso", "Americano", "Cappuccino", "Latte"]

func emphasize(inout theContentsOf array:[String], byApplying modification:(String) -> String) -> [String] {
    for i in 0 ..< array.count {
        array[i] = modification(array[i])
    }
    return array
}

func upperCase(phrase:String) -> String {
    return phrase.uppercaseString
}

emphasize(theContentsOf: &coffeeDrinks, byApplying: upperCase)
coffeeDrinks

emphasize(theContentsOf: &coffeeDrinks, byApplying: {(phrase:String) -> String in return phrase + "!"})
coffeeDrinks