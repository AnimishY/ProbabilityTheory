#define the vectors for size, topping and order
size = c("S", "M", "L")
topping = c("pepperoni", "sausage", "meatball", "extra cheese")
order = c("deliver", "pick-up")

#keep track of the pizzas
pizzas = character(0)

#iterate over each value for each variable
for(i in 1:length(size)){
  for(j in 1:length(topping)){
    for(k in 1:length(order)){
      
      #create a pizza
      pizzas = rbind(pizzas, c(size[i], topping[j], order[k]))
    }
  }
}

#print out the pizzas; should have 24
pizzas