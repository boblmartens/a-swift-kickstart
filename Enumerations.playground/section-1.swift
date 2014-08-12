enum BasketballPosition {
    case PointGuard, ShootingGuard
    case SmallForward, PowerForward
    case Center
}

var colorCommentary = ""
var ballHandler = BasketballPosition.PowerForward

switch ballHandler {
case .PowerForward: colorCommentary = "The power forward with the ball."
}

colorCommentary