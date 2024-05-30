#generate the committees (people labeled 1 to 5)
committees2 = gtools::combinations(n = 3, r = 2)
committees1 = gtools::combinations(n = 3, r = 1)

#print the sets of the two committees
committees2; committees1