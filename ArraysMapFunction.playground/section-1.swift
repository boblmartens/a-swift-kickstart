import Foundation

var coffeeDrinks = ["Drip", "Espresso", "Americano", "Cappuccino", "Latte"]
var numbers = [5,1,4,8,2,7]

let emphasizedNumbers = numbers.map{a in "\(a)!"}
numbers
emphasizedNumbers

let emphasizedCoffeeDrinks = coffeeDrinks.map{drink in drink.uppercaseString + "!"}
coffeeDrinks
emphasizedCoffeeDrinks