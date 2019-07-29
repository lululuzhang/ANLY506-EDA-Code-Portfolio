# week 1 R Basics

# Arithmetic operation 

2 + 5
7 - 1
2 * 6
5 / 3
3 ^ 2
## Modulo %%
-6 %% 4
### [1] 2

# Assign a value to a variable

## example Assign the value 42 to a variable abc

abc <- 42

## Print out the value of the variable abc

abc
### [1] 42

# data type

## Declare variables of different types

my_numeric <- 42
my_character <- "universe"
my_logical <- FALSE 

##R is case sensitive: TRUE or FALSE

## Check class of variables

### example Check class of my_numeric
class(my_numeric)
#### [1] "numeric"

### example Check class of my_character
class(my_character)
####[1] "character"

### example Check class of my_logical
class(my_logical)
#### [1] "logical"