import Foundation

struct Vertex {
    var x, y: Double
    
    func coordinates() -> (Double, Double) {
        return (x,y)
    }
    
    func distanceFrom(otherPoint: Vertex) -> Double {
        let deltaX = otherPoint.x - self.x
        let deltaY = otherPoint.y - self.y
        let distance = sqrt(deltaX * deltaX + deltaY * deltaY)
        return distance
    }
}

var point = Vertex(x: 5.0, y: 6.0)
point.x
point.y

point.x = 3.0
point.y = 4.0

var pointOne = Vertex(x: 3.0, y: 4.0)
var pointTwo = pointOne

let (pointOneX, pointOneY) = pointOne.coordinates()
pointOneX
pointOneY

pointOne.x = 6.0
pointTwo.x
pointTwo.y = 8.0
pointOne.y

pointOne.distanceFrom(pointTwo)