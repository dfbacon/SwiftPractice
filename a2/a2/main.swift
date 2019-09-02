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
var playAgain = true
    
while playAgain {
    playAgain = playGame()
}
