// Importing math operations
import Foundation
import Glibc

// Greet user and ask for input.
print("Welcome to Adrijan's Bakery.")
print("We are selling croissants for 2.25$.")
print("If you buy 6 or more you pay no tax and if you order 10 or more you get a mystery discount.")
print("How many would you like to buy?.")

// This if statement make sure the user input is a int.
if let userOrder = Int(readLine()!) {

    // Check to see if the input was valid.
    if (userOrder >= 10) {
        // Convert user input to a double
        let orderAsDouble = Double(userOrder)
        // calculate the order total.
        var orderPrice = 2.25 * orderAsDouble

        // generate random number between 1 and 10.
        let randomInt = Int.random(in: 1..<10)
        // Convert random int to a double
        let randomDouble = Double(randomInt)

        // Calculate the total with discount.
        orderPrice = orderPrice - randomDouble

        // Display the total with discount.
        print("The total cost after a \(randomDouble)$ discount is \(orderPrice)$.")

    } else if (userOrder >= 6) {
        // Convert user input to a double
        let orderAsDouble = Double(userOrder)
        // calculate the order total.
        let orderPrice = 2.25 * orderAsDouble

        // Display the total with discount.
        print("The total cost is \(orderPrice)$.")

    } else if (userOrder >= 0) {
        // Convert user input to a double
        let orderAsDouble = Double(userOrder)

        // calculate the order total.
        var orderPrice = 2.25 * orderAsDouble

        // Calculate HST on the order.
        orderPrice = orderPrice - (0.13 * orderPrice)

        // Round the total to 2 decimals.
        let total = String(format: "%.2f", orderPrice)

        // Print the total with HST.
        print("The total cost after HST is \(total)$.")
    } else {
        // Print if user enters invalid input.
        print("This is not a valid input!")
    }
} else {
     // Print if user enters invalid input.
    print("This is not a valid input!")
}

// Greet user and ask for their income
print("Enter your yearly income:")

// generate random number between 1 and 100000.
let randomInt2 = Int.random(in: 1..<100000)

// display the generated number.
print("For example \(randomInt2).")

// This if statement makes sure the user enters a double.
if let userIncome = Double(readLine()!) {

    // Check to see if the input was valid.
    if (userIncome < 0 ) {
        // Print if user enters invalid input.
        print("That is not a valid input.")
    } else if (userIncome < 60000) {
        // Display the user earns below average.
        print("Your income is below average.")
    } else if (userIncome > 60000) {
        // Display the user earns above average.
        print("Your income is above average.")
    } else {
        // Display the user earns average.
        print("Your income is average.")
    }
} else {
    // Display invalid input.
    print("This is not a valid input!")
}

