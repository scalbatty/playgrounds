//: [Previous](@previous)

enum FrogColor {
    case Red
    case Green
    case Gray
}

struct Frog {
    var name: String
    let color: FrogColor
    var legs: Int
    
    var description:String {
        get {
            return "I am \(name), a \(color) frog with \(legs) legs" // Can't we use "color" as a string any more ?…
        }
    }
    
    func jump() {
        switch(legs) {
        case 4: // But what if it has more than 4 legs?…
            print("\(name) jumps high!")
        default:
            print("\(name) cannot jump…")
        }
        
    }
    
    func describe() {
        print(description)
    }
    
    mutating func loseALeg() {

        if legs > 0 {
            self.legs -= 1
        }
    }
}

let rainette = Frog(name:"Rainette", color: FrogColor.Green, legs: 4)
rainette.name
rainette.describe()
rainette.jump()

//rainette.legs = 3 // As Frog is a struct here, we can't change its properties !

var toad = Frog(name:"Crapaud", color:.Gray, legs: 3)
toad.loseALeg()
toad.legs
toad.jump()
//: [Next](@next)
