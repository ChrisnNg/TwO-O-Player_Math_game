Planning notes

Create a 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

```rb
#randomizer
rand(1...20)
```

Both players start with 3 lives. They lose a life if they mis-answer a question. At the end of every turn, the game should output the new scores for both players, so players know where they stand.

The game doesn’t end until one of the players loses all their lives. At this point, the game should announce who won and what the other player’s score is.

example output

```
Player 1: What does 5 plus 3 equal?
> 9
Player 1: Seriously? No!
P1: 2/3 vs P2: 3/3
----- NEW TURN -----
Player 2: What does 2 plus 6 equal?
> 8
Player 2: YES! You are correct.
P1: 2/3 vs P2: 3/3
----- NEW TURN -----
... some time later ...
Player 1 wins with a score of 1/3
----- GAME OVER -----
Good bye!
```

expecting first line to look something like

```
Player {playernum}: What does #{num_1} plus #{num_2} equal?
>9 #user input via gets.chomp
# if correct
Player {playernum}: YES! You are correct.
# else
Player {playernum}: Seriously? No!
# print health
P1: #{p1_health}/3 vs P2: #{p2_health}/3
# end with new turn
----- NEW TURN -----
```
