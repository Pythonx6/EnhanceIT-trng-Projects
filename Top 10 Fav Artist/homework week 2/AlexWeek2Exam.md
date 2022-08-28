# Exam Week 2

## Section 1

1.What is Swift and how is it unique? 
ANSWER:
[
Swift is a robust and intuitive programming language created by Apple for building apps for iOS, Mac, Apple TV, and Apple Watch.
]

//  =========================================================================================================== //

2.What is an optional?
ANSWER:
[
An optional in Swift is basically a constant or variable that can hold a value OR no value. 
The value can or cannot be nil. It is denoted by appending a “?” after the type declaration.
]

//  =========================================================================================================== //

3.What are the different ways we can unwrap an optional and explain each?
ANSWER[

You can perform unwrapping in the following ways:


-Using an if else block. 
EJ.
Unwrapping means to make sure that the Optional value is not nil. You can do this by using a simple if-else block like this:

CODE-

var variable:String? //evaluates to nil

if variable != nil{
 print("Not nil")
}
else{
 print("Nil")
}
//Output : Nil

//=========================================//


-Using Forced unwrapping. 

EJ.
Forced unwrapping is quite contradictory because you're accessing the optional value regardless of its value (nil or not nil). If a nil optional is unwrapped, an error is thrown saying "Unexpectedly found nil while unwrapping an Optional value."

You can forcefully unwrap an optional using the exclamatory(!) operator like this:

CODE-

var color:String?;
print(color!) // Unexpectedly found nil while unwrapping an Optional value

color = "Black";
print(color!) // Black


//  =========================================================================================================== //

-Using Optional binding.
EJ.

Optional binding is similar to using an if-else block. The only subtle difference is that if the optional value is not nil, the unwrapped value is assigned to a new constant and further operations are performed on the constant.

You can do this using the if-let statement:

CODE -

var password:String? = "$tr0ngp@$$w0rd"

if let unwrappedpass = password {
    print("Password is \(unwrappedpass)") //Password is $tr0ngp@$$w0rd
}


//  =========================================================================================================== //


-Using Optional chaining.
EJ.

You use optional chaining in places where you're dealing with multiple optional values at once. 
You use it to access and mutate or assign far-fetched attributes whose value depends on other constraints.

CODE-

class ShipmentCar{
    var seats:Int?
    var quality:String?
    
    init(seatQty:Int){
        seats = seatQty
    }

    func displaySeatQuality(){
        if let seatQuality = quality{
            print("The seat covering is made of:\(seatQuality)")
        }
    }

}

class CheckSeats{
    var seatExists:ShipmentCar?

}

var obj = ShipmentCar(seatQty:4)
var obj2:CheckSeats?
obj2 = CheckSeats()
obj2?.seatExists = obj
obj2?.seatExists?.quality = "Leather" //Optional chaining, set leather quality of seats, only if seats exist.
obj.displaySeatQuality()
//Output: The seat covering is made of: Leather



//  =========================================================================================================== //


-Using a nil coalescing operator.
EJ.

The nil coalescing operator works as shorthand notation for the regular if-else block. 
If a nil value is found when an optional value is unwrapped, an additional default value is supplied which will be used instead.

CODE-

var text:String?
var output = text ?? "Default value"

print(output) // Default value

text = "This is a string"

output = text ?? "Default String"
print(output) // This is a string

You can also write default values in terms of objects.

]

//  =========================================================================================================== //


4.What is optional chaining?
ANSWER[

Optional chaining is a process for querying and calling properties, methods, 
and subscripts on an optional that might currently be nil.

The optional chaining operator ( ?. ) enables you to read the value of a property located deep within a chain of 
connected objects without having to check that each reference in the chain is valid.

]

5.What is MVC? Go into detail and give some of the pros and cons.
ANSWER[

 is a widely used design pattern for architecting software applications. 
 Cocoa applications are centered around MVC and many of Apple's frameworks are impregnated by the pattern.
 
 MODEL:
 -
   The model layer is responsible for the business logic of the application. 
   It manages the application state. This also includes reading and writing data, 
   persisting application state, and it may even include tasks related to data management, such as networking and data validation.


VIEW:
-
  The view layer has two important tasks, presenting data to the user and handling user interaction.

CONTROLLER:
-
  Controller
The view layer and the model layer are glued together by one or more controllers. In iOS and tvOS applications, for example, that glue is a view controller, an instance of the UIViewController class or a subclass thereof.



ADVANTAGES:
-

  SEPARATION OF CONCERNS:
  -
The advantage of the MVC pattern is a clear separation of concerns. Each layer of the MVC pattern is responsible for a clearly defined aspect of the application.

 REUSABILITY:
 -
While controllers are often not reusable, views and models are easy to reuse. 
If the MVC pattern is correctly implemented, the view layer and the model layer should be composed of reusable components.


Development of the application becomes fast.
-
//=============================================================================//
PROBS:
 -

the complexity in code navigation
-

MVC must have strict rules over methods 
-


]

//  ================================================================================//
6.Explain the Viewcontroller Lifecycle.

ANSWER[


NEED TO COMPLETE



]

//  ================================================================================  //
7.In the Application LifeCycle, what does it mean when the application is Inactive?
ANSWER[

An application is running in the foreground but is not receiving any events. User interaction is not possible at this time. This happens when a call or SMS is received.

]

//  ================================================================================//

8.What is a closure? What is the difference between an escaping and non-escaping closure?
ANSWER[


NEED TO COMPLETE

]

//  ================================================================================//

9.What is the difference between reference types and value types?
ANSWER[
 
 NEED TO COMPLETE


]


//  ================================================================================//
10.In Swift, how do we pass a value by reference? 
ANSWER[
To pass parameter by reference to a Swift function, define this parameter with inout keyword, and use preface the parameter in function call with ampersand (&).

The syntax to pass parameter by reference to a function in Swift is

CODE
-
func functionName(parameterName: inout Type) {
    //body
}
 
var param: Type = initialValue
functionName(&param)


Example2:
-
In the following program, we define a function incrementByN() where the parameter x is defined as inout. 
When we call this function, we pass the variable someNumber by reference using ampersand.

func incrementByN(x: inout Int, n: Int = 0) {
    x = x + n
}
 
var someNumber = 10
print("someNumber before function call : \(someNumber)")
incrementByN(x: &someNumber, n: 7)
print("someNumber after  function call : \(someNumber)")


]

//  ================================================================================//


11.What are some higher order functions used in swift and what do they do? (Give 2)
ANSWER[

A higher-order function is a function that takes one or more functions as arguments or returns a function as its result.

Here are some swift higher-order functions — 
( forEach, map, CompactMap, flatMap, filter, reduce, sort, and sorted ).
-

CODE
-
// 1
let coins = [1, 5, 2, 10, 6]

// 2
for coin in coins {
    print("\(coin)$", terminator: " ")
}

print()

// 3
coins.forEach { (coin) in
    print("\(coin)$", terminator: " ")
}

print()

// 4
coins.forEach { print("\($0)$", terminator: " ") }

in step 1 you are creating an array with name coins.
-

In step 2, you are iterating through all coins and adding $ to every element and prints it.
-

In step 3, you are using forEach for iterating through all coins and adding $ to every element and prints it.
-

In step 4, you are using a short syntax of forEach.
-


Filter
-
filter will iterate through all elements in an array and will return an updated array only with the elements which satisfied the condition written inside the body of filter.
-
CODE FILTER EX.
-
// 1
let coins = [1, 5, 2, 10, 6, 2, 7, 4, 10, 15]

// 2
let coinsWithValueLessThanSix = coins.filter { (coin) -> Bool in
    coin < 6
}
print(coinsWithValueLessThanSix)

// 3
let coinsWithValueLessThanSixShortSyntax = coins.filter { $0 < 6 }
print(coinsWithValueLessThanSixShortSyntax)

In the above code, in step 1 you are creating an array with name coins.
-
In step 2, you are iterating through all coins, filtering the coin which has value less than six.
-
In step 3, you are using a short syntax of filter.
-
]

//  ================================================================================//

12.What is Autolayout?
ANSWER[

Auto Layout constraints allow us to create views that dynamically adjust to different size classes and positions. The constraints will make sure that your views adjust to any size changes without having to manually update frames or positions.
]



## Section 2 Coding

### Find the second-largest value of an array, in linear time.
For this case, we'll consider unique values.

input: [1, 2, 3, 4, 5, 5]
output: 4
Also factor in empty or single-element arrays.

input: [1]
output: nil

CODE
-
import UIKit

var array = [1, 2, 3, 4, 5, 6]
var maxValue = 0, temp = 0, maxIndex = 0
for(index, item) in array.enumerated(){
    if (item > temp){
        maxIndex = index
    }
}

array.remove(at: maxIndex)
for(_, item) in array.enumerated(){
    if (item > maxValue){
        maxValue = item
    }
}

print("=============")
print(maxValue)
print("=============")

RESULT = 5
