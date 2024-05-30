#generate the committees (people labeled 1 to 5)
committees = gtools::combinations(n = 5, r = 3)

#should get choose(5, 3) = factorial(5)/(factorial(3)*factorial(2)) = 10 committees
committees