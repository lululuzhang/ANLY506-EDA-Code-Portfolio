# week 4

# Data Structures: Data Frame, Vectors, Matrices

# VECTOR

## four ways to create a vector

## combine a list of elements separated by commas

c(1,3,5,7)

1:4

seq(from=1, to=4, by=2)

rep("c", times = 10)

## Subsetting is done with []

## length()

x <- c(1,3,5,7,9)

x[1:3]

x[-2]

length(x)
# [1] 5

# SSCALLAR

length(x)

# LISTS

## One dimension + heterogeneous data type

## combine a list of elements separated by commas
## list()

list = list(
            x = c(2,4,6,8),
            y = "good",
            z = FALSE)

## Subsetting is done 1) with [[]]  or 2) with $

list [[2]]

list $ z

# MATRICES

## Combine vectors as columns in a matrix

cbind(a, b, c)

## Combine vectors as rows in a matrix

rbind(a, b, c)

## Create a matrix from a vector x

x <- matrix(1:12, nrow=4, ncol = 3)

x

x [1, 2]

x[1,]

# DATAFRAMES

# Create a dataframe from named columns

Class.a <- data.frame ("Index" = c (1,2,3),
                      "Name" = c ("Amy", "Bob", "Lily"),
                      "Sex" = c ("f", "m", "f"),
                      "Age" = c (12, 12, 13) )

Class.a

# ARITHMETIC OPERATIONS

sum (x)

product (x)

min (x)

max (x)

mean (x)

median (x)

sd (x)

var (x)

range (x)

quantile (x, probs)

summary (x)







