//: [Previous](@previous)

//: # Enums are cool

//: Enums can have associated values!

enum BannerType {
    
    case Marquee(String)
    case Score(Int, Int)
    case Alert(String)
    
    func display() -> String {
        
        switch self {
        case let .Marquee(message):
            return "---- \(message) ----"
        case let .Score(home, visitor):
            return "[ \(home) : \(visitor) ]"
        case let .Alert(message):
            return "!!! \(message.uppercaseString) !!!"
        }
    }
}

BannerType.Marquee("Hello there").display()

BannerType.Alert("omg something went very wrong").display()

BannerType.Score(3, 0).display()
//: [Next](@next)
