birthday_problem_min_n <- function(trials = 100) {
  n <- 1
  probability <- 0
  
  while (probability < 0.5) {
    shared_birthday_count <- 0
    
    for (i in 1:trials) {
      birthdays <- sample(1:365, n, replace = TRUE)
      if (any(duplicated(birthdays))) {
        shared_birthday_count <- shared_birthday_count + 1
      }
    }
    
    probability <- shared_birthday_count / trials
    if (probability < 0.5) {
      n <- n + 1
    }
  }
  
  return(n)
}

# Example usage
trials <- 10000  # Number of simulation trials
n <- birthday_problem_min_n(trials)

cat("The smallest number of people for which the probability of at least two people sharing the same birthday is at least 0.5 is", n, "\n")
