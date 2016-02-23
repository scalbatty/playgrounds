//: [Previous](@previous)

//: # Can you feel the `func` ?

//: Let's add a function to the global scope

func sayHelloTo(name: String) {

    print("Hello \(name)")
    
}

sayHelloTo("Swift")


//: You must specify return type using `->`


func factorial(target: Int) -> Int {
    
    var result = 1
    
    for i in 1...target {
        result *= i
    }
    
    return result
    
}

factorial(6)

/*: Parameters from the first must be named when called

You can remove the need to name parameters by using the `_` marker, try it!

*/

func add(left: Int, right: Int) -> Int {
    return left + right
}

add(4, right: 3)

factorial(add(2, right: 4))

//: You can specify external and internal names

func addAllIntegers(from start: Int, to finish: Int) -> Int {
    
    var temp = 0
    
    for i in start...finish {
        temp += i
    }
    
    return temp
}


addAllIntegers(from: 10, to: 1000)


//: You can also return an optional value

func divide(numerator: Int, by divisor: Int) -> Int? {
    
    if divisor == 0 {
        return nil
    }
    
    return numerator/divisor
}

divide(4, by: 2)

divide(42, by: 0)

//: You can set default values for parameters

func chimeBell(times:Int = 10) {
    for _ in 1...times { // Did you notice we use the `_` again, this time to ignore the counter ?
        print ("Ding!")
    }
}

chimeBell()

chimeBell(4)

//: You can set a variable number of arguments

func sum(numbers: Int...) -> Int {
    
    var result = 0
    
    for number in numbers {
        result += number
    }
    
    return result
}

sum()
sum(1, 3, 5, 7, 9)

//: You can also use functions as parameters! 

func repeatFunc(times: Int, function: () -> ()) {
    for _ in 1...times {
        function()
    }
}

repeatFunc(3, function: { print("hello") }) //: Is there a way we can get rid of the { } here ?

//: [Next](@next)
