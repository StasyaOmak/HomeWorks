import UIKit

var greeting = "Hello, playground"


/*
 Exercise 1.1
 
 Create a func calculateResult with argument firstNumber, parametrs numberOne, data type Int, + argument and SecondNumber, parametrs numberTwo, data type Int ,+ argument with CalculationType, parametrs calculationType, data type CalculationType and everything will return Int.
 
 Than use switch case to calculate and return Int result
 
 var result = numberOne
 
 switch calculationType {
 case .addition: result += numberTwo
 .....
 }
 print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
 
 return result
 
 */

enum CalculationType: String {
    case addition = "+"
    case substraction = "-"
    case multiplication = "*"
    case division = "/"
}

func calculateResult(firstNumber numberOne: Int, secondNumber numberTwo: Int, calculationType: CalculationType) -> Int {
    
    var result = numberOne
    
    switch calculationType {
    case .addition: result += numberTwo
    case .substraction: result -= numberTwo
    case .multiplication: result *= numberTwo
    case .division:
        if numberTwo != 0 {
            result /= numberTwo
        } else {
            print("Division with zero is forbidden")
        }
    }
    
    print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
    
    return result
}

/*
 Exercise 1.2
 Declare two numbers.
 Call func 4 times for all calculateResult
 */

let firstNumber = 20
let secondNumber = 10

calculateResult(firstNumber: firstNumber, secondNumber: secondNumber, calculationType: .addition)
calculateResult(firstNumber: firstNumber, secondNumber: secondNumber, calculationType: .substraction)
calculateResult(firstNumber: firstNumber, secondNumber: secondNumber, calculationType: .multiplication)
calculateResult(firstNumber: firstNumber, secondNumber: secondNumber, calculationType: .division)


/*
 Exercise 2
 
 Create struct Car with elements
 name: String
 productionYear: Int
 horsPower: Int
 
 Create func getSpecs() print it with elements provided above
 */


struct Car {
    var name: String
    var productionYear: Int
    var horsePower: Int
    
    func getSpecs() {
        print("Car name: \(name), production year: \(productionYear), horsePower: \(horsePower)")
    }
}

let myCar = Car(name: "Ford Mustang", productionYear: 2023, horsePower: 755)
myCar.getSpecs()
