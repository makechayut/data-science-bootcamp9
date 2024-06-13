## Homework: Rock Paper Scissors Game
game <- function () {
  print("Hello! Welcome to Rock, Paper, Scissors game!")
  flush.console()
  user_status <- readline("Are you ready to play?: ")

  player_score <- 0
  bot_score <- 0

  while (player_score < 5 && bot_score < 5) {
  if (user_status == "yes") {
    flush.console()
    user_hand <- readline("Please choose your hand: ")
    hands <- c("rock", "paper", "scissors")
    comp_hand <- sample(hands, 1)
    print( paste("Your opponent chooses", comp_hand))
  } else {
    print("Please try again.")
    }

  if (user_hand == "rock" & comp_hand == "rock") {
    print("You tie!")
    print (paste("Player score: ", player_score))
    print (paste("Opponent score: ", bot_score))
  } else if (user_hand == "rock" & comp_hand == "paper") {
    print("You lose!")
    bot_score <- bot_score + 1
    print( paste("Player score: ", player_score))
    print( paste("Opponent score: ", bot_score))
  } else if (user_hand == "rock" & comp_hand == "scissors") {
    print("You win!")
    player_score <- player_score + 1
    print (paste("Player score: ", player_score))
    print (paste("Opponent score: ", bot_score))
  } else if (user_hand == "paper" & comp_hand == "rock") {
    print("You win!")
    player_score <- player_score + 1
    print (paste("Player score: ", player_score))
    print (paste("Opponent score: ", bot_score))
  } else if (user_hand == "paper" & comp_hand == "paper") {
    print("You tie!")
    print (paste("Player score: ", player_score))
    print (paste("Opponent score: ", bot_score))
  } else if (user_hand == "paper" & comp_hand == "scissors") {
    print("You lose!")
    bot_score <- bot_score + 1
    print( paste("Player score: ", player_score))
    print( paste("Opponent score: ", bot_score))
  } else if (user_hand == "scissors" & comp_hand == "rock") {
    print("You lose!")
    bot_score <- bot_score + 1
    print( paste("Player score: ", player_score))
    print( paste("Opponent score: ", bot_score))
  } else if (user_hand == "scissors" & comp_hand == "paper") {
    print("You win!")
    player_score <- player_score + 1
    print (paste("Player score: ", player_score))
    print (paste("Opponent score: ", bot_score))
  } else if (user_hand == "scissors" & comp_hand == "scissors") {
    print("You tie!")
    print (paste("Player score: ", player_score))
    print (paste("Opponent score: ", bot_score))
  }

    if (user_hand == "quit") {
      break
    }

    if (player_score >= 5) {
      print("Congradulations! YOU WIN!!!")
    } else if (bot_score >= 5) {
      print("GAME OVER, Better luck next time!")
    }
  }
}
