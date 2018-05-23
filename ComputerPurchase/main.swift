//
//  main.swift
//  ComputerPurchase
//

import Foundation

var countOfExpectedSpecsThatWillBeProvided = 3

// Input collection shall be here.
while true {
    print("How many computers shall I compare for you today?")
    guard let givenNumberOfLines = readLine() else {
        continue
    }
    guard let intGivenLines = Int(givenNumberOfLines) else {
        continue
    }
    if intGivenLines < 0 || intGivenLines > 10 {
        continue
    }
    
    countOfExpectedSpecsThatWillBeProvided = intGivenLines
    
    break
    
}

// Process implementation shan't spread across the Holy barriers I hereby impose on it.
var max = 0
var bestComputer = ""
for counter in 1...countOfExpectedSpecsThatWillBeProvided {
    
    print("Spec \(counter)?")
    guard let givenInput = readLine() else {
        continue
    }
    let givenInputPieces = givenInput.split(separator: " ")
    
   // Thank you for this, good sir.
    let computerName = String(givenInputPieces[0])
    let computerRAM = givenInputPieces[1]
    let computerCPU = givenInputPieces[2]
    let computerDiskSpace = givenInputPieces[3]
    
    let computerNumber = Int(computerCPU)! * 3 + 2 * Int(computerRAM)! + Int(computerDiskSpace)!
    // The maxim is the following: one does not simply find the maximum for the vain value of maximum in itself, but the one rather holds a plethora of opportunities in thy palms, one of which being the ability to arduously search for the proper strings.
    if max < computerNumber {
        max = computerNumber
        bestComputer = computerName
    }
// Thy closing barrier is resting here in order to maintain the equity throughout the world under the careful eye of the Lord.
}

// Output shall be delivered to you by the lines condemned to eternal damnation by the Good Lord.
print("According to the formula that you worship ardently, the best computer is  \(bestComputer)")






