# Week 5 

# Tidy Data

# missing data

## replace missing data by NA

## recode 999

## select rows where v1 is 99 and recode column v1

mydata$column[mydata$column==999] <- NA


# Identify NA values

## Check summary()

summary(iris.mis)

## Count NULL values

sum(is.na(iris.mis)==TRUE)

# imputes missing value using user defined statistical method (mean, max, mean). 
# Default is median. 

with(iris.mis, impute(Sepal.Length, mean))

# mean imputation using additive regression, bootstrapping, and predictive mean matching

aregImpute (~ Sepal.Length + 
              Sepal.Width + 
              Petal.Length + 
              Petal.Width + 
              Species, 
            data = iris.mis, 
                  n.impute = 5)

## removes all data for an observation that has one or more missing values

data_complete_cases <- data[complete.cases(data), ]

### or

data_complete_cases <- na.omit(data)



