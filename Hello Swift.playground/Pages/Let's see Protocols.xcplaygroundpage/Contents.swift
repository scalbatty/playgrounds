//: [Previous](@previous)

protocol Jumper {
    
    var jumpDistance: Int { get }
    
    func jump()
    
}


struct Frog {
    var name: String
    let color: String
    var legs: Int
    
    var description:String {
        get {
            return "I am \(name), a \(color) frog with \(legs) legs" // Can't we use "color" as a string any more ?…
        }
    }
}

extension Frog: Jumper {
    var jumpDistance: Int {
        return legs * 5
    }
    
    func jump() {
        print("\(name) the frog jumps pretty high !")
    }
}


let rainette = Frog(name:"Rainette", color: "Green", legs: 4)
rainette.name
rainette.jump()


extension Jumper {
    
    func jump() {
        print("Jumping \(jumpDistance) meters…")
    }
}

struct Cat: Jumper {
    var name: String
    let secretName: String
    var size: Int
    var jumpDistance: Int {
        return size * 10
    }
}

let felix = Cat(name: "Felix", secretName: "Azazel", size:60)
felix.jump()//: [Next](@next)
