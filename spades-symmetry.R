#replicate
set.seed(110)
sims = 1000

#create a deck; define spades as 1, everything else as 0
deck = c(rep(1, 13), rep(0, 52 - 13))

#keep track of the number of spades we sample
spades = rep(NA, sims)

#run the loop
for(i in 1:sims){
  
  
  #deal the four card hand
  hand = sample(deck, 4, replace = FALSE)
  
  #see how many spades we got
  spades[i] = sum(hand)
}

#should get 1
mean(spades)