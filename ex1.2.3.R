## part c. ##
#find the unique passcodes
uniques = gtools::permutations(n = 10, r = 4, repeats.allowed = FALSE)

#create unique and ascending passcodes
uniques.ascending = apply(uniques, 1, function(x) sort(x))

#orient the matrix (the function t() just transposes a matrix; flips it on it's side)
uniques.ascending = t(uniques.ascending)

#create a data frame
uniques.ascending = data.frame(uniques.ascending)

#remove duplicates; should get choose(6, 4) = 15
dim(unique(uniques.ascending))[1]