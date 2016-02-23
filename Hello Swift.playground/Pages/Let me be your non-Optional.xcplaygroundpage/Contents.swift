//: [Previous](@previous)

/*: # Hello Swift!

## Let me be your non-`Optional`

`nil` means there's no value, it is also called `Null` in other languages.

In Swift, the fact that a variable can contain `nil` is explicit, it's like a different type altogether, which is called an `Optional`.

*/

var areYouThere:Optional<String>

areYouThere = "Hello"
areYouThere = nil
areYouThere = "Yes!"

/*: `Optional<String>` means "Optional of String", the `<>` are for Generics, which we'll see a bit later.

If you don't declare your variable as Optional, you can't assign `nil` to it.

*/

var youAreThere:String
youAreThere = "Hello"
//youAreThere = nil // ERROR: You can't assign `nil` to a non-optional variable!

//: There is a shortcut for `Optional<String>`, which is `String?`. You can add the `?` to any type and it will define an Optional of this type.

var dogName:String?
var dogAge:Int?
var dogWeight:Double?

/*: You can see in the right bar that these variables are automatically assigned `nil` on their declaration, whereas `youAreThere:String` is not assigned anything when it is declared.

You can declare a non-optional variable and assign a value to it later, the compiler makes sure you don't try to use it before it's assigned!

*/

var notNow:Int

//let tooSoon = notNow + 3 // ERROR: You can't use `notNow` since it has not been assigned yet

notNow = 100

let later = notNow * 10

//: You can even declare a `let` an assign it later ! Try changing the `var notNow:Int` to a `let`

/*: Okay, so if optionals can be null and non-optionals can't, why don't we use optionals everywhere? That's a good question.

Well, the problem with Optionals if you can't just assume they contain a value! 
*/

dogAge = 3
dogName = "Puffy"
dogWeight = 3.5

//let humanAge = dogAge * 7 //ERROR: You can't just assume `dogAge` contains a value, even though we assigned it earlier!

/*: How do you use all these optional variables then?

Well, you have to make sure there is a value, and make the compiler happy about it. The cleanest way to do this is to use the `if let` syntax. 

This is called "unwrapping" : you extract the value out of the Optional.

*/

var humanAge = 0

if let realDogAge = dogAge {
    humanAge = realDogAge * 7
}

//: You can also use the same variable name, it will be shadowed inside the scope of the brackets

let humanName:String
if let dogName = dogName {
    humanName = dogName + " the human"
}


/*: 

But we can't use the variable `humanName` after the `if let` conditional block, since we can't be 100% sure `humanName` has been assigned!

Sometimes you want to swap the optional value with a default value, you can use the `??` operator for this, which will automatically use the value after the `??` if the optional is `nil`.

*/

let superSizedWeight = 100 * (dogWeight ?? 0)

/*: Remember our `Int("I'm NOT an Integer!")` call on the last page, and the fact that it was `nil`? This is a "failable" initializer, it actually returns an `Int?`, we're not sure to get a value out of it!

In the example below, the `maybe` variable is inferred a type `Int?` because this is what the `Int()` initializer that accepts a `String` returns to it.
*/

let maybe = Int("90")

/*: Okay, you've seen Optionals and Non-Optionals… There is another way still! 

You can declare an *implicitly unwrapped Optional*. Now that's a mouthful!

Using an exclamation mark, like this `Int!`, you indicate the compiler that it doesn't have to do its usual checks on this variable or this return type. 

It can be assigned nil and the compiler won't throw an error if you use it without checking it has a value or not. But it might crash at runtime, try replacing `6` with `nil` below…

*/

let duh:Int! = 6

8 * duh

/* :The exclamation mark basically tells Swift "I know what I'm doing", which you should only do when you indeed know what you're doing. And be aware you're working around a pretty
    
You can also use the exclamation mark after an Optional value to force "unwrap" it. Again, if you do this you might have runtime errors.

*/

let forcedHumanAge:Int = dogAge! * 7

/*: The Optional type system is there to avoid the dreaded Null Reference Exception, which is one of the most commonly encountered errors in software development.

It might seem a little frustrating at first, but with the type system, it creates a very safe environment for you to create awesome code!
*/

//: [Next](@next)
