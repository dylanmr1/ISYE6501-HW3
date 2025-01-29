# load packages
library(outliers)

# clear environment
rm(list = ls())

# load dataset
path <- "/Users/dylanrivera/Downloads/hw3"
crime_data <- read.csv(file.path(path,"uscrime.txt"), sep="")

# set seed
set.seed(1)

# test for outliers
result <- grubbs.test(crime_data[,16], type = 10, opposite = FALSE, two.sided = TRUE)
