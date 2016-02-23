//: [Previous](@previous)

/*: # Hello Swift!

## Hope I'm your `Type`

Let's have a look at the primitive types. Note that these are all value types, most of them are `struct`s behind the scene (more on that later)

`Bool` is pretty straightforward

*/

let yes = true
var cake = false


/*: We've seen `String` and `Int` already

You can concatenate `String`s with the + operator.

*/

"Foo" + "Bar"

// "It's ver " + 9000 // You can't add `String`s and `Int`s together!

//: To mix strings and other types, you can use a Template String

let name = "Jason!"
let age = 7

"My name is \(name) and I'm \(age) years old"

//: To convert types, the convention is to use an **initializer** (or constructor if you wish), here we'll use `String`'s default initializer aptly named `String()` (more on initializers later). This is not a cast!

"It's over " + String(9000)

//: There are many other `String` methods in the stdlib or in Foundation…

//: What about numbers? You have your Int, UInt (unsigned), Float and Double

let integer = 9000
let double = 9000.1 // Literal decimals are Double by default
let float:Float = 9000.2 // You can tell the compiler you want a float by giving your variable an explicit type

//: They don't work with each other very well though

// integer + double
// double * float

double + Double(integer)
Float(double) * float

//: You can transform a `String` into number using the proper initializer

Int("9000")
Double("3.14")

//: What if you give it a string that is not a number at all?…

Int("I'm NOT an Integer!")

//: `nil`!? Wait, what's that?


//: [Next](@next)
