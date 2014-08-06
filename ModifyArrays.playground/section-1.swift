var coffeeDrinks = Array(count:5, repeatedValue:"Cappuccino")
coffeeDrinks.count
coffeeDrinks
coffeeDrinks[0] = "Drip"
coffeeDrinks.count
coffeeDrinks
coffeeDrinks[2...4] = ["Espresso", "Latte"]
coffeeDrinks.count
coffeeDrinks
coffeeDrinks.count
coffeeDrinks
let drink = coffeeDrinks.removeAtIndex(1)
drink
coffeeDrinks.count
coffeeDrinks

if coffeeDrinks.count > 1 {
    coffeeDrinks.removeAtIndex(1)
}
coffeeDrinks.count
coffeeDrinks

if !coffeeDrinks.isEmpty {
    coffeeDrinks.removeLast()
}
coffeeDrinks.count
coffeeDrinks

coffeeDrinks.append("Decaf")
coffeeDrinks = coffeeDrinks + ["Mocha"]
coffeeDrinks = coffeeDrinks + ["Cold Brew"]
coffeeDrinks.count
coffeeDrinks

coffeeDrinks.insert("French Press", atIndex: 1)
coffeeDrinks.count
coffeeDrinks