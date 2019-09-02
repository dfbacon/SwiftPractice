/*
 * Filename: a2_1
 * Author: Daniel Bacon
 * Date: 02 September 2019
 *
 * Copy of programming assignment originally for C++.
 *
 * This is the a2_1 program. The program is designed to approximate
 * a blackjack game, with a single player dealing a hand to themself. The game
 * begins by dealing two cards, then prompting
 * the user for more cards, while tracking and displaying the card
 * total. The values of the cards ranges from 1 to 10 only. If the
 * total of the cards exceeds 21 then the player busts. Player is
 * always prompted to decide to play again.
 *
 * Specifically, the assignment is a review of loops. Aanything more
 * advanced than a loop is not allowed.
 */

import Foundation

let MAX_VALUE = 21
let PLAY_AGAIN_STRING = "Would you like to play again (Y/N)?"
let DRAW_AGAIN_STRING = "Would you like another card (Y/N)?"



func main() -> Void {
    var playAgain = true
    
    while playAgain {
        playAgain = playGame()
    }
}



func promptPlayer(userString : String) -> Bool {
    print("\(userString)", terminator: ": ")
    
    let userResponse = readLine()
    
    if userResponse == "Y" || userResponse == "y" {
        return true
    }
    
    return false
}



func playGame() -> Bool {
    var firstCard, secondCard, cardValue : Int
    var drawCard = true
    
    
    firstCard = Int.random(in: 0 ..< 10)
    print("First card is: \(firstCard)")

    secondCard = Int.random(in: 0 ..< 10)
    print("Second card is: \(secondCard)")
    
    cardValue = firstCard + secondCard
    
    while drawCard {
        print("Total value of your cards is: \(cardValue)")
        
        if cardValue == MAX_VALUE {
            print("Blackjack! You win!")
            break
        }
            
        else if cardValue > MAX_VALUE{
            print("Bust. You lose.")
            break
        }

        drawCard = promptPlayer(userString: DRAW_AGAIN_STRING)
    }
    
    return promptPlayer(userString: PLAY_AGAIN_STRING)
}
