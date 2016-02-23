//: [Previous](@previous)

//: # Let's see some collections

//: ## Arrays

let numbers = [4, 8, 15, 16, 23, 42]

numbers.count

let fifteen = numbers[3]

var musqueteers:[String] = ["Atos", "Portos", "Aramis"]

let first = musqueteers[0]
let otherFirst = musqueteers.first // This is an optional !

musqueteers.append("D'Artagnan")

musqueteers[0] = "SOAT"

//musqueteers.append(4) // ERROR: Musqueteers is an array of String, you can't add an Int !

let team = ["Smith", "Peck", "Baracus", "Murdock"]

// team[2] = "Barracuda" // ERROR: `team` is immutable, you can't change its elements or append

print("The Team:")

for member in team {
    
    print(member)
    
}

//: ## Ranges

let digits = 0...9

print("Digits:")

for digit in digits {
    
    print(digit)
    
}

let myBestYears = 20..<30 // Does not include 30

//let myFirstYears = 10...1 // ERROR: A range can only be with end > start

let alphabet = "A"..."Z"

//: Advanced: If you like Map/Reduce/Filter, it's all here with closures !

let sumOfPairsTimesTwo = (1...100)
                            .filter({ i in i%2 == 0 })
                            .map({ i in i * 2 })
                            .reduce(0, combine:{ acc, i in acc + i })

//: ## Dictionaries


print("Marbles:")

let marbleCount:[String:Int] = ["Alice": 8, "Bob": 3, "Charlie": 12, "Demetros": 7]

marbleCount["Alice"]

for (name, count) in marbleCount {
    print("\(name): \(count) marbles")
}

//: [Next](@next)
