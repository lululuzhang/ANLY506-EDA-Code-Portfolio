# week 3
# Exploratory Data Analysis Checklist

## read in csv files

read.csv("dataset/US EPA data 2017.csv")

## Rewrite the names of the columns to remove any spaces

names(ozone) <- make.names(names(ozone))

##  check the number of rows and columns

nrow(ozone)
### [1] 66869

ncol(ozone)
## [1] 55

## check library path 
.libPaths()

## str()

str(ozone)

# Look at the top and the bottom of data

## head()
## tail()

head(ozone)

head(ozone[, c(6:7, 10)])

tail(ozone[, c(6:7, 10)])

# Check your “n”s

table(ozone$Date.of.Last.Changee)

## observations were measured at date "2018-07-18"

install.packages("dplyr")

library(dplyr)

filter(ozone, Date.of.Last.Change == "2018-07-18" )

select(State.Name, 
       County.Name, 
       Date.Local, 
       Time.Local, 
       Sample.Measurement)

filter(ozone, State.Code == "36" 
       & County.Code == "033" 
       & Date.Local == "2014-09-30") %>%

select(Date.Local, 
       Time.Local, 
       Sample.Measurement) 
      as.data.frame
      
## hourly measurements of ozone

      summary(ozone$Sample.Measurement)
      
## deciles of the data
      
      quantile(ozone$Sample.Measurement, seq(0, 1, 0.1))

##  identify each county with State.Name, County.Name
      
ranking <- group_by(ozone, State.Name, County.Name) %>%
        +         summarize(ozone = mean(Sample.Measurement)) %>%
        +         as.data.frame %>%
        +         arrange(desc(ozone))

## the top 10 counties

head(ranking, 10)

## the 10 lowest counties

tail(ranking, 10)

## convert the date variable into a Date class

ozone <- mutate(ozone, Date.Local = as.Date(Date.Local))

## split the data by month
## average hourly levels

filter(ozone, 
       State.Name == "California" 
       & 
         County.Name == "Mariposa") %>% 
  mutate(month = factor(months(Date.Local), 
                        levels = month.name)) %>%
  group_by(month) %>% 
  summarize(ozone = mean(Sample.Measurement))

## the lowest level counties, Caddo County, Oklahoma
filter(ozone, State.Name == "Oklahoma" & County.Name == "Caddo") %>% nrow
