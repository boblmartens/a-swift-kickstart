enum BasketballPosition:String {
    case PointGuard = "point guard", ShootingGuard = "shooting guard"
    case SmallForward = "small forward", PowerForward = "power forward"
    case Center = "center"
}

let ballHandler = BasketballPosition.ShootingGuard
let ballHandlerDescription = ballHandler.toRaw()

var spursPlayers:[BasketballPosition:String]

spursPlayers = [
    .PointGuard: "Tony Parker",
    .ShootingGuard: "Danny Green",
    .SmallForward: "Kawhi Leonard",
    .PowerForward: "Tim Duncan",
    .Center: "Tiago Splitter"
]

func checkTheFloor() -> Bool {
    return spursPlayers.count == 5
}

checkTheFloor()

for (position, playerName) in spursPlayers {
    println("The \(position.toRaw()) is \(playerName).")
}