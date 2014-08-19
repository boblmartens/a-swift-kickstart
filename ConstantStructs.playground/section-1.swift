import Foundation

prefix operator √ {}

prefix func √ (argument:Double) -> Double {
    return sqrt(argument)
}

infix operator  ^-^ {precedence 160}

func ^-^ (number:Double, power:Double) -> Double {
    return pow(number, power)
}

struct Vertex {
    var x, y: Double
    var distanceFromOrigin:Double{
        let origin:Vertex = Vertex(x: 0, y: 0)
        return distanceFrom(origin)

    }
    
    func coordinates() -> (Double, Double) {
        return (x,y)
    }
    
    func distanceFrom(otherPoint: Vertex) -> Double {
        let deltaX = otherPoint.x - self.x
        let deltaY = otherPoint.y - self.y
        let distance = √(deltaX^-^2 + deltaY^-^2)
        return distance
    }
    
    mutating func scaleBy(multiplier:Double) {
        x *= multiplier
        y *= multiplier
    }
    
    mutating func moveBy(x:Double, y:Double) {
        self.x += x
        self.y += y
    }
}

var point = Vertex(x: 5.0, y: 6.0)
point.x
point.y

point.x = 3.0
point.y = 4.0

var pointOne = Vertex(x: 3.0, y: 4.0)
pointOne.distanceFromOrigin
pointOne
var pointTwo = pointOne

let (pointOneX, pointOneY) = pointOne.coordinates()
pointOneX
pointOneY

pointOne.x = 6.0
pointTwo.x
pointTwo.y = 8.0
pointOne.y

pointOne.distanceFrom(pointTwo)

