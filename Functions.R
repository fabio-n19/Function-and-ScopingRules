add2 <- function(x, y) {
  x + y
}            ## x and y go together for the function to recognize it

add2(9,7)
print(add2)

above10 <- function(x) {
  use <- x>10
  x[use]
}

print(above10)

## A correct function with values on its dependants

above <- function(x, n = 40) {
  use <- x > n
  x[use]
}

x <- 1:60

above(x, 50)


#Calculating the mean of each column of a matrix with function ----

data("airquality")
columnmean <- function(x, removeNA = TRUE) {
  nc <- ncol(x)
  means <- numeric(nc)
  for (i in 1:nc) {
    means[i] <- mean(x[,i], na.rm=removeNA)
  }
  means 
}

columnmean(airquality)



