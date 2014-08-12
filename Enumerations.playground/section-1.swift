enum BasketballPosition:Int {
    case PointGuard = 1, ShootingGuard
    case SmallForward, PowerForward
    case Center
}

var ballHandler = BasketballPosition.SmallForward
let positionNumber = ballHandler.toRaw()
var colorCommentary = "The \(positionNumber) has the ball."

switch ballHandler {
case .PowerForward:
    colorCommentary = "The power forward with the ball."
case .PointGuard, .ShootingGuard:
    colorCommentary = "One of the guards has the ball."
default:
    colorCommentary = "The ball needs to go to the Point Guard."
}

colorCommentary
ballHandler.toRaw()