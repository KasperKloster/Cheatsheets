import UIKit

/*
 * Variables and Constants
*/
// Variables
var hello = "Hello, world."
var varOne = 1
var varTwo = 2
print("\(hello). 1 + 2 = \(varOne + varTwo)")

// Constants
let constOne = 10
let constTwo = 20
print("adding constants \(constOne + constTwo)")


/*
 * Data Types
*/
// String: Text
var str:String = "A string"

// Single Character
var singleCharacter:Character = "C"

// Integer: Whole numbers
var int:Int = 2

// Float: Decimal numbers
var float:Float = 3.14
print(Int(round(float))) // Rounding an converting to a integer

// Double: Large decimal numbers (Much larger than this)
var double:Double = 3.14159265359

// Bool: True or false
var bool:Bool = true


/*
 * If Statements
*/

if varOne <= varTwo {
    print("\(varOne) is less than \(varTwo)")
} else if varOne >= varTwo {
    print("\(varOne) is greater than \(varTwo)")
} else {
    print("\(varOne) is equal to \(varTwo)")
}

if constOne < constTwo && varOne < varTwo {
    print("\(constOne) is less than \(constTwo) AND \(varOne) is less than \(varTwo)")
}
if varOne > varTwo || int == 2 && constOne != 40{
    print("\(varOne) is greater than \(varTwo) OR \(int) is equal to 2 and \(constOne) is NOT equal to 40")
}


/*
 * Switch Statements
*/
switch singleCharacter {
    case "a":
    print("singleCharacter is an A")
    case "b", "c":
    print("singleCharacter is an B or C")
default:
    print("Default")
}


/*
 * Loops
*/
// For in Loop
var sum = 0
for index in 1...5 {
    sum += index
}
print(sum)

// While Loop
var counter = 5
while counter > 0 {
    counter -= 1
    print("Count and print this 5 times")
}

// Repeat-While Loop
repeat {
    print("Repeat and print this 5 times")
    sum -= 1
} while sum > 10


/*
 * Functions
*/
// Declaring function with parameters
func addTwoNumbers(paramOne:Int, paramTwo:Int)
{
    print(paramOne + paramTwo)
}
// Calling function with arguments
addTwoNumbers(paramOne: varOne, paramTwo: varTwo)

// Function with argument labels and returning Datatype (-> Int)
func multiplyTwoNumbers(using number1:Int, and number2:Int) -> Int{
    return number1 * number2
}

let mulitply = multiplyTwoNumbers(using: constOne, and: constTwo)
print(mulitply)


/*
 * Classes
*/
// Defining BlogPost Class
class Article {
    // Properties
    var title:String   = ""
    var body:String    = ""
    var author:String  = ""
    var numberOfComments:Int = 0
    // Method
    func addComment() {
        numberOfComments += 1
    }
}

// BlogPost Object (Instance of BlogPost Type)
let newArticle = Article()
// Accessing properties
newArticle.title = "A title"
newArticle.body = "Body of blog post"
newArticle.author = "Firstname Lastname"
print("Aricle title is \(newArticle.title) \(newArticle.numberOfComments)")
// Calling method
newArticle.addComment()
print("Aricle has: \(newArticle.numberOfComments) comment(s)")

/*
 * Subclasses / Inheritance
*/
// Superclass / Parent Class
class Car {
    var topSpeed = 200
    func drive () {
        print("Car driving at \(topSpeed)")
    }
}
let myRide = Car()
myRide.drive()

// Subclass. Inheriting Car Properties Methods
class FutureCar : Car {
    // Override Parent Method
    override func drive() {
        // Accessing superclass method (adding to parent func)
        super.drive()
        print("Future car has rockets. Topspeed is \(topSpeed + 50)")
    }
}
let myNewRide = FutureCar()
myNewRide.drive()

/*
 * Initializers
*/

class Person {
    var name:String = ""
    var age:Int = 0
    // The Init method gets calledfirst
    init(_ name:String, _ age:Int) {
        // self is the object crated. Name property to name parameters
        self.name    = name
        self.age     = age
    }
    // We can use multiple inits
    init(){
        
    }
}

var person = Person("My name", 99)
person.name

var secondPerson = Person()
secondPerson.age
