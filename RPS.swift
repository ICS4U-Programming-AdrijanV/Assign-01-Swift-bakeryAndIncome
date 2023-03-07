// Importing math operations
import Foundation
import Glibc

// Get user input and set constants.
print("Welcome to Adrijan's Bakery.")
print("We are selling croissants for 2.25$.")
print("If you buy 6 or more you pay no tax and if you order 10 or more you get a mystery discount.")
print("How many would you like to buy?.")

if let userOrder = Int(readLine()!) {

    // Check to see if the input was valid.
    if (userOrder >= 10) {
        let orderAsDouble = Double(userOrder)
        // calculate to order total.
        var orderPrice = 2.25 * orderAsDouble

        // generate random number between 1 and .
        let randomInt = Int.random(in: 1..<10)
        let randomDouble = Double(randomInt)

        // Calculate the total with discount.
        orderPrice = orderPrice - randomDouble

        // Display the total with discount.
        print("The total cost after a \(randomDouble)$ discount is \(orderPrice)$.")

    } else if (userOrder >= 6) {

        let orderAsDouble = Double(userOrder)
        // calculate to order total.
        let orderPrice = 2.25 * orderAsDouble

        // Display the total with discount.
        print("The total cost is \(orderPrice)$.")

    } else if (userOrder >= 0) {

        let orderAsDouble = Double(userOrder)

        // calculate to order total.
        var orderPrice = 2.25 * orderAsDouble

        orderPrice = orderPrice - (0.13 * orderPrice)

        // Round the total to 2 decimals.
        let total = String(format: "Energy: %.2f", orderPrice)

        // Print the total with HST.
        print("The total cost after HST is \(total)$.")
    } else {
        print("This is not a valid input!")
    }
} else {
    print("This is not a valid input!")
}

