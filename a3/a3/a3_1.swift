/*
 * Filename: a3_1.swift
 * Author: Daniel Bacon
 * Date: 02 September 2019
 *
 * Copy of programming assignment originally for C++.
 *
 * This is the a3_1 program. The program is designed to play a number guessing
 * game with the user. The range for the number is, inclusively, 1 : 100.
 * After the program guesses the number, the user will indicate whether their
 * number is higher or lower, or if the program guessed correctly. Once the
 * game is completed the program will prompt the user to play again.
 *
 * The purpose of this assignment is to give practice with writing and
 * implementing functions, including function prototypes, function definitions,
 * and function invocations.
 */



// ask user for higher/lower/correct

// prompt to play again

func promptUserInput(guess : Int) -> String {
    var userInput : String?
    
    print("Is your number \(guess)?")
    
    while userInput == nil {
        print("Enter c for correct, h for higher, or l for lower",
              terminator: ": ")

        userInput = readLine()
        userInput = userInput?.uppercased()
        print("TESTING: userInput is \(userInput)")
        
        if userInput != "H" || userInput != "L" || userInput != "C" {
            print("Invalid input...")
            userInput = nil
        }
    }
    
    return userInput!
}



func promptPlayAgain() -> Bool {
    
    var playAgainResponse : String?
    
    print("Do you want to play again? (Y/N)", terminator: ": ")
    
    playAgainResponse = readLine()
    if playAgainResponse != "Y" || playAgainResponse != "y" {
        playAgain = false
    }
    
    return playAgain
}



func getNewGuess(currentValue : Int, userResponse : String) -> Int {
    if userResponse == "H" {
        return Int.random(in: currentValue ... MAX_VALUE)
    }
    
    return Int.random(in: 1 ... currentValue)
}



func playGame() -> Bool {
    var computerGuess = MAX_VALUE / 2
    var userResponse = "x"
    
    
    print("Think of a number between 1 and 100.\n")
    
    while userResponse != "C" {
        userResponse = promptUserInput(guess: computerGuess)
        computerGuess = getNewGuess(currentValue: computerGuess,
                                    userResponse: userResponse)
    }
    
    return promptPlayAgain()
}
