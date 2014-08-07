let coffeeDrinks = ["Drip", "Espreso", "Americano", "Cappuccino", "Latte"]

func item(#number:Int) -> String {
    return "\n ( \(number) ) "
}

var results = ""

for var index = 0; index < coffeeDrinks.count; index++ {
    results += item(number: index + 1) + coffeeDrinks[index]
}
results

for index in 0..<coffeeDrinks.count {
    results += item(number: index + 1) + coffeeDrinks[index]
}
results

for kindOfDrink in coffeeDrinks {
    results += kindOfDrink + "\n"
}
results

for (index, kindOfDrink) in enumerate(coffeeDrinks) {
    results += item(number: index + 1) + kindOfDrink
}
results
