#----vectors----
dogs <- c("teddy", "khora", "waffle", "banjo")

typeof(dogs)
class(dogs)

weights <- c(50, 55, 25, 35)

typeof(weights)
class(weights)

dog_age <- c(5L, 6L, 1L, 7L)

typeof(dog_age)
class(dog_age)

is.numeric(dog_age)
is.numeric(dogs)

dog_info <- c("teddy", 50, 5L)
typeof(dog_info)
is.character(dog_info)

dog_food <- c(teddy = "purina", 
              khora = "alpa",
              waffle = "fancy feast",
              banjo = "blue diamond") #named vector

#----indexing----
dog_food[3]
dog_food["waffle"]

cars <- c("red", "orange", "white", "blue", "silver", "black")
cars[5]
cars[2:4]

i <- 4
cars[i]

i <- seq(1:3)
cars[i]

cars[3] <- "BURRITOS!"
cars

#----matrices----
fish_size <- matrix(c(0.8, 1.2, 0.4, 0.9), ncol = 2, nrow = 2, byrow = FALSE)
typeof(fish_size)
class(fish_size)

dog_walk <- matrix(c("teddy", 5, "khora", 10), ncol = 2, nrow = 2, byrow = FALSE)
dog_walk
class(dog_walk)
typeof(dog_walk)

whale_travel <- matrix(data = c(31.8, 1348, 46.9, 1587), ncol = 2, nrow = 2, byrow = FALSE)
whale_travel

whale_travel[1,2] #row and column
whale_travel[2,] #second row
whale_travel[,1] #first column
whale_travel[2]

#----lists----
urchins <- list("blue", c(1,2,3), c("cat", "dog"), 5L)

urchins[1]
urchins[[1]]
urchins[[2]]

tacos <- list(topping = c("onion", "cilantro", "guacamole"), fillings = c("beans", "meat", "veggies"))
tacos

tacos[[2]]
tacos$fillings[2]

#----data frames----
fruit <- data.frame(type = c("apple", "banana", "peach"),
                    mass = c(130, 195, 250))
fruit
class(fruit)

fruit[1,2]
fruit[3,1]
fruit[2,1] <- "pineapple"
fruit

fruit$type
fruit$mass

dogs <- data.frame(name = c("teddy", "khora", "waffle"),
                   age = c(1, 2, 3))

waffle_age <- dogs[dogs$name == "waffle",]$age
waffle_age
