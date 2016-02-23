//: [Previous](@previous)

//: # I have some `class` !

class Frog {
    var name: String
    let color: String // This is immutable, a frog can't change its color !
    var legs = 4
    
    init(name: String, color: String) {
        self.name = name
        self.color = color
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
        print("I am \(name), a \(color.lowercaseString) frog with \(legs) legs")
    }
}

let rainette = Frog(name:"Rainette", color: "Green")
rainette.name
rainette.describe()
rainette.jump()

rainette.legs = 3 // Rainette is an immutable variable but it's a Reference type (class) so it can be mutated !

rainette.jump()


//: [Next](@next)
