//
//  a2_1.swift
//  a2
//
//  Created by Daniel Bacon on 9/2/19.
//  Copyright © 2019 Daniel Bacon. All rights reserved.
//



func promptPlayer(userString : String) -> Bool {
    
    print(userString, terminator: ": ")
    
    let userResponse = readLine()
    
    if userResponse == "Y" || userResponse == "y" {
        return true
    }
    
    return false
}



func setNewCardValue() -> Int {
    return Int.random(in: 1 ..< 10)
}



func playGame() -> Bool {
    
    var firstCard, secondCard, cardValue : Int
    var drawCard = true
    
    
    firstCard = setNewCardValue()
    print("First card is: \(firstCard)")
    
    secondCard = setNewCardValue()
    print("Second card is: \(secondCard)")
    
    cardValue = firstCard + secondCard
    
    while drawCard {
        print("Total value of your cards is: \(cardValue)")
        
        if cardValue == MAX_VALUE {
            print("Blackjack! You win!\n")
            break
        }
            
        else if cardValue > MAX_VALUE{
            print("Bust. You lose.\n")
            break
        }
        
        drawCard = promptPlayer(userString:
            "Would you like another card (Y/N)?")

        if drawCard {
            firstCard = setNewCardValue()
            print("New card value is: \(firstCard)")
            cardValue += firstCard
        }
        
    }
    
    return promptPlayer(userString: "Would you like to play again (Y/N)?")
}
