import UIKit

var greeting = "Hello, playground"


/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()
 
 */
var firstValue: Float = 3.14
var secondValue: Float = 42.0
var doubleNumber = Double(firstValue + secondValue)

print(" The sum of variable \(firstValue) and \(secondValue) is equal - \(doubleNumber)")

/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 
 */

var numberOne = 105
var numberTwo = 44
let divisionResult = numberOne / numberTwo
let remainderResult = numberOne % numberTwo

print("When dividing \(numberOne) by \(numberTwo), the result is \(divisionResult), the remainder is \(remainderResult).")

/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */

var qty = 7
var price = 0

if qty >= 10 {
    price = 850
} else if qty >= 5 {
    price = 900
} else {
    price = 1000
}

var totalSum = qty * price

print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")


/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */

let userInputAge = "33a"
let convertedAge = Int(userInputAge)

if userInputAge == nil {
    print("age can be converted to Int.")
} else {
    print("age can not be converted to Int.")
}



/*
 Ex5:
 Calculate the number of years, months, days have passed from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")
 */



let dayOfBirth = 24
let montOfBirth = 11
let yearOfBirth = 1993


let currentDay = 4
let currentMonth = 10
let currentYear = 2023

let secondPerDay = 60 * 60 * 24
let daysPerMonth = 30
let daysPerYear = 360


var totalDaysFromBirth = (currentYear - yearOfBirth ) * daysPerYear
totalDaysFromBirth += (currentMonth - montOfBirth) * daysPerMonth
totalDaysFromBirth += currentDay - dayOfBirth

let secondsFromBirth = secondPerDay * totalDaysFromBirth
let totalYearsFromBirth = secondsFromBirth / secondPerDay / daysPerYear
let totalMonthFromBirth = secondsFromBirth / secondPerDay / daysPerMonth

print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")


/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */


switch montOfBirth {
case 1...3:
    print("I was born in the first quarter")
case 4...6:
    print("I was born in the second quarter")
case 7...9:
    print("I was born in the third quarter")
case 10...12:
    print("I was born in the fourth quarter")
default:
    print("Invalid month of birth")
}


 
