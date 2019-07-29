# week 2

# object names

## valid object names with . and _
my.number <- 26

## invalid object names 

### my age # space
### 3my.age # start with number
### score! # with invalid character

# Workspace management functions

## Display all objects
ls()
### [1] "abc"          "my_character" "my_logical"   "my_numeric" 

## Removes the objects abc and my_character from your workspace
rm(abc, my_character)
### [1] "my_logical" "my_numeric"

ls()

## Removes all objects
rm(list = ls())

ls()

## show the current working directory

getwd()
## [1] "/Users/zhanglu/week1

# Change my working directory 

setwd(dir = "/Users/zhanglu/Documents/HU/506/portfolio/")

getwd()
## [1] "/Users/zhanglu/Documents/HU/506/portfolio"

# show the name of all files under my working directory
list.files()
## [1] "week1.R" "week2.R"

# save objects in .RData files

save(list = ls(all=T), file = "study1.RData") 

save(my_logical, my_numeric,
     file = "study1.RData")

## save all the objects in your workspace as a .RData file

save.image(file = "study1.RData")

## Load objects in study1.RData into my workspace

load(file = "study1.RData")

#txt files

## write.table
### writes the object x to a text file called week2.txt

## Define how the columns will be separated with sep
### sep = ","  
### sep = \t"

## whether or not save the rownames in the text file
### row.names = FALSE

x <- 1
y <- 2

write.table (x= 2,
             file = "week2.txt", 
             sep = "\t",
             row.names = FALSE)

## read.table()

X <- read.table (file = 'week2.txt',
                     sep = '\t',
                     header = FALSE,
                     stringsAsFactors = FALSE)

## Read a text file from the web

fromweb <- read.table(file = 'http://goo.gl/jTNf6P',
                      sep = '\t',
                      header = TRUE)

# Print the result
fromweb



