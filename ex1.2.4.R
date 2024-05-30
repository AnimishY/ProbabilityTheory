## part d. ##
#find all passcodess
passcodes = gtools::permutations(n = 10, r = 4, repeats.allowed = TRUE)

#create ascending passcodes
ascending = apply(passcodes, 1, function(x) sort(x))

#orient the matrix (the function t() just transposes a matrix; flips it on it's side)
ascending = t(ascending)

#create a data frame
ascending = data.frame(ascending)

#remove duplicates; should get choose(6 + 4 - 1, 4) = 126
dim(unique(ascending))[1]