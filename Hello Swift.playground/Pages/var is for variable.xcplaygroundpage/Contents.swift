//: # Hello Swift!
//:
//: ## `var` is for Variable

var hello = "Hello, Swift"

//: You can reassign a variable

hello = "Oh hai, Swift"

//: You can also mutate the content*

hello.appendContentsOf(", how are you?")

//: `let` defines an immutable variable, you can't reassign it or mutate its __value__ _(You can however mutate a reference type inside a `let`)_

let eight = 8

// eight = 12 // ERROR: `eight` can't be reassigned

let bye = "Bye"

// bye.appendContentsOf(", it's been nice") // ERROR: `appendContentsOf` is a mutating function

//: You can use emojis as names

let 🎂 = "Lie"

/*: ## Type

Notice we didn't declare any type for our variables? Swift uses **Type Inference**, it knows the type of the variable in regards to what assignment you made.

* `str` is a variable of type `String`
* `eight` is a `let` of type `Int`
* 🎂 is a `let` of type `String`

You can use option+click on any variable to view which type is inferred.

Swift is strongly typed, you can't use another type after one has been inferred, even though you didn't declare it explicitly.

*/

// hello = 12 + 3 // This won't work, `hello` is a type String

//: You can use a colon to explicitly type a variable, that can be useful to work around

var sum:Int
let formal:String = "How do you do?"

// var what // ERROR: If you declare a variable with no type nor assignment, there is no way Swift can know which type it is!



//: [Next](@next)
