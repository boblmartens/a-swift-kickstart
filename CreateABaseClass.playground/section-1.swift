class BasketballTeam {
    var name: String
    var affiliation: String {
        willSet(newAffiliation) {
            println("Before: changing affiliation from \(affiliation) to \(newAffiliation)")
        }
        
        didSet(oldAffiliation) {
            println("After: changed affiliation from \(oldAffiliation) to \(affiliation)")
        }
    }
    convenience init(name:String) {
        self.init(name:name, affiliation:"Intramural Team")
        println("Creating team named \(name)")
    }
    init(name:String, affiliation:String) {
        println("designated initializer before property inits in BasketballTeam")
        self.name = name
        self.affiliation = affiliation
        println("designated initializer after property inits in BasketballTeam")
    }
    
    func colorCommentary() -> String {
        return "The \(affiliation) \(name)"
    }
}

class ProfessionalBasketballTeam: BasketballTeam {
    let league: String?
    override var affiliation:String {
        willSet(newAffiliation) {
            println("Before (subclass): changing affiliation from \(affiliation) to \(newAffiliation)")
        }
        didSet(oldAffiliation) {
            println("After (subclass): changed affiliation from \(oldAffiliation) to \(affiliation)")
        }
    }
    convenience init() {
        println("convenience initializer before self.init in ProfessionalBasketballTeam")
        self.init(name:"Globetrotters", affiliation:"Harlem", league:nil)
        println("convenience initializer after self.init in ProfessionalBasketballTeam")
    }
    init(name: String, affiliation: String, league: String?) {
        println("designated initializer before self.init in ProfessionalBasketballTeam")
        self.league = league
        super.init(name: name, affiliation: affiliation)
        println("designated initialzier after self.init in ProfessionalBasketballTeam")
    }
    override func colorCommentary() -> String {
        var comment = super.colorCommentary()
        if let validLeague = league {
            comment += "of the \(league)"
        }
        return comment
    }
}

class CollegeBasketballTeam: BasketballTeam {
    let conference: String
    init(name: String, affiliation: String, conference: String) {
        self.conference = conference
        super.init(name: name, affiliation: affiliation)
    }
}

class Announcer {
    var name:String
    deinit {
        
    }
    lazy var team = BasketballTeam(name:"Old and Tired")
    init(name:String){
        self.name = name
    }
}

let originalJazz = ProfessionalBasketballTeam(name: "Jazz", affiliation: "New Orleans", league: "NBA")
let relocatedJazz = originalJazz
relocatedJazz.affiliation = "Utah"
originalJazz.colorCommentary()
relocatedJazz.colorCommentary()

let buckeyes = CollegeBasketballTeam(name: "Buckeyes", affiliation: "Ohio State", conference: "Big 10")
buckeyes.colorCommentary()

let trotters = ProfessionalBasketballTeam()
trotters.colorCommentary()

let announcer = Announcer(name: "Booming Voice")
println("Created \(announcer.name)")
announcer.team.colorCommentary()
