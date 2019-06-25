
#'Style guide:
# 1) Copyright statement comment
# 2) Author comment
# 3) File description comment, including purpose of program, inputs, and outputs
# 4) source() and library() statements
# 5) Function definitions
# 6) Executed statements, if applicable (e.g., print, plot)


####################### workspace setup
#The workspace path needs to be changed upon initial use of this code
setwd("~/polybox/Jonas Peschel - Master Thesis Share/05 Data/Adoption-barriers-for-EV-in-Switzerland")
getwd()

#clearing work environment
rm(list=ls())


###################### data import
source("data_import.R")

###################### library statements

library(Hmisc) # if package is not installed: install.packages("Hmisc")
library(dplyr) # if package is not installed: install.packages("dplyr")
library(ggplot2) # if package is not installed: install.packages("ggplot2")

######################## descriptive statistics


# gender
# female = 0 | male = 1 | other = 2
describe(d_noSL1$Q4_gender) 

# age
# age in years as an integer number
describe(d_noSL1$Q5_age)

# age groups are set up in accordance to the groups in the 2015 Swiss mobility survey:
#' not used, but used in mobility survey: age 6-17
#' group 1: age 18-24
#' group 2: age 25-44
#' group 3: age 34-64
#' group 4: age 65-79
#' group 5: age 80 and above


# setup of data frame for age
# each column has the count of occurences in the respective age group
age_group_ID <- 1:5
age_group_ranges <- c("18-24", "25-44", "45-64", "65-79", "80 and above")
d_age = tibble("Age group ID" = age_group_ID, "Age Groups" = age_group_ranges, "Survey"=NA, "2015 Mobility Census"=NA)

# add column for age group assignment
# todo: add the column after "age" column
# test: mutate of d_age
mutate(d_age, "test")
head(d_age)
mutate_at()
?mutate_at

d_noSL1 <- mutate(d_noSL1, "Age group")
head(d_noSL1)

##################### plotting of data


op <- par(mfrow = c(3, 3))


hist(d$'Q18_PT-spend')


hist(d$'Q2_lang-DE')
hist(d[[10]])
hist(d[[11]])
for (i in 10:15){
hist(d[[i]])
boxplot(d[[i]])  
}
boxplot(d$"Q5_age")
