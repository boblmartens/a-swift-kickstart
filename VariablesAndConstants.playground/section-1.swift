let newline = "\n"

var people = ["LLVM Master", "Obj-C Old-timer", "Swift Programmer"]

func sayHello(toPersonWithName name:String = "World") -> String {
    return "Hello, \(name)!"
}

func createGreeting(withGreeting greeting:String) -> (String) -> String {
    func flexibleGreeting(name:String = "World") -> String {
        return "\(greeting), \(name)!"
    }
    return flexibleGreeting
}

let hello = createGreeting(withGreeting: "Hello")
let bonjour = createGreeting(withGreeting: "Bonjour")
let hey = createGreeting(withGreeting: "Hey")

hello("my friend")
bonjour("mon ami")
hey("buddy")

func greet(theFollowingPeople folks:[String], withMessage message:(String) -> String) -> (countOfPeople:Int, completeGreeting:String) {
    var temporaryGreeting = ""
    for folk in folks {
        temporaryGreeting = temporaryGreeting + message(folk) + newline
    }
    return (folks.count, temporaryGreeting)
}

greet(theFollowingPeople: people, withMessage: hey).0
let results = greet(theFollowingPeople: people, withMessage: hey)
results.0
results.1
let (numberOfPeople, fullMessage) = greet(theFollowingPeople: people, withMessage: hey)
numberOfPeople
fullMessage
let (numberOfPeopleInResults, _) = results
numberOfPeople
results.countOfPeople
results.completeGreeting