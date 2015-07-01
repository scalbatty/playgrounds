//: [Previous](@previous)
/*:

## NSPredicate Hello World

Given the Person class:
*/
import Foundation

class Person: NSObject {    // Must inherit from NSObject or NSPredicate will fail at runtime
    var name: String = "John Doe"
    var age: Int = 0
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

/*:

and a bunch of People

*/

let groucho = Person(name: "Groucho", age: 50)
let chicco  = Person(name: "Chicco", age: 61)
let harpo   = Person(name: "Harpo", age: 45)
let zeppo   = Person(name: "Zeppo", age: 61)

let people: NSArray = [groucho, chicco, harpo, zeppo]

/*:

we can get __all people of age == 61__ with a simple predicate

*/

let allAge61 = NSPredicate(format: "age = 61")

people.filteredArrayUsingPredicate(allAge61)

/*:

we can also __filter by name__

*/


let namesPredicate = NSPredicate(format: "name = 'Harpo'")

people.filteredArrayUsingPredicate(namesPredicate)


/*:

💻 __NOW, IT'S YOUR TIME__: try to filter all people aged 50 years old, then everyone called _Zeppo_

*/



/*:

💻 __SOME DESTRUCTIVE FUN__: remove the NSObject parent class from Person and see what happens (__save before__)

*/



/*:

💻 You can use `=` or `==` in comparisons. Try it

*/



//: [Next](@next)