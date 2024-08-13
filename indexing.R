rm(list = ls())

#----indexing----
x <- c(2.1, 4.2, 3.3, 5.4)

x[1]
x[seq(1:3)]

#pulls values in specific order
x[c(3, 1)]

#in ascending order
x[order(x)]
y <- x[order(x, decreasing = TRUE)]
y

x[c(1,1)]

#r will truncate to [2]
x[c(2.1, 2.9)]

#negative integers get rid of elements, but can't mix with positive integers
x[-1]
x[-c(3,1)]

x[c(TRUE, TRUE, FALSE, FALSE)]

#expressions
x[x > 3]

x[c(TRUE, FALSE)] #cycling the rules TRUE FALSE TRUE FALSE
x[c(TRUE, TRUE, NA, FALSE)]
x[]
x[0]

x <- 1:5
x
x[c(1,2)]<- 2:3
x[-1] <- 4:1
x
x[c(TRUE, FALSE, NA)] <- 1
x
df <- data.frame(a = c(1, 10, NA))
df$a[df$a < 5] <- 0
df
