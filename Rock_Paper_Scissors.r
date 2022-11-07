
  #variables
  
  win <- 0
  lose <- 0
  even <- 0
  
  print("Play: Rock Paper Scissors.")
  print("To play please type: 'Rock', 'Paper', 'Scissors' or 'Quit' to exit the game")
  
  attempts <- 0
  
  while (attempts == 0) {
  print("Your turn:")
  player <- readLines("stdin", n=1)
  options <- c("Paper","Rock","Scissors")
  print(paste("You:", player))
  computer <- sample(options, 1, replace = T)

  if ((player == "Paper")
            | (player == "Rock")
            | (player == "Scissors")) {
      print(paste("Computer's turn:", computer))
            }
    else if (player != "Quit")
    {print("Please try again")}

    if (player == "Quit") 
      {print("Quit Game")
       result <- data.frame(win,lose,even)
       print(result)
       print("Good Bye.")
      break
      }
 
    #even
    if (player == computer) {print("Even")
                           even <- even + 1}
    #win
    else if ((player == "Paper" & computer == "Rock")
      | (player == "Rock" & computer == "Scissors")
      | (player == "Scissors" & computer == "Paper"))
      {print("You Win!") 
      win <- win + 1}

    #lose
    else if ((player == "Paper" & computer == "Scissors")
      | (player == "Scissors" & computer == "Rock")
      | (player == "Rock" & computer == "Paper"))   
    {print("You lose.")
     lose <- lose + 1}
}

  

