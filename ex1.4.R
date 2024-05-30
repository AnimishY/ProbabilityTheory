#label people 1 to 4
people = 1:4

#first, we do the president-first approach
#initialize the committees
committees1 = character(0)

#iterate through potential presidents
for(i in 1:length(people)){
  
  #generate the new committes, with i as the president
  new.committees = cbind(i, gtools::combinations(n = length(people) - 1, r = 2, v = people[-i]))
  
  #add on to existing committees
  committees1 = rbind(committees1, new.committees)
}


#remove column names
colnames(committees1) = c("", "", "")



#second, we do the committee-first approach; initialize here
committees2 = character(0)

#generate all of the committees, without presidents
new.committees = gtools::combinations(n = 4, r = 3)

#iterate through the committees and add presidents
for(i in 1:dim(new.committees)[1]){
  
  #pick each person as president
  for(j in 1:3){
    
    #add the committee
    committees2 = rbind(committees2, c(new.committees[i, j], new.committees[i, -j]))
    
  }
}

#remove column names
colnames(committees2) = c("", "", "")

#print the two groups of committees; should be the same size
#   the first person is president in each case
#we should have k*choose(n, k) = 3*choose(4, 3) = 12 total
committees1; committees2