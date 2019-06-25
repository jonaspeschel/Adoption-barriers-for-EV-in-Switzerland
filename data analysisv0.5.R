
#'Style guide:
# 1) Copyright statement comment
# 2) Author comment
# 3) File description comment, including purpose of program, inputs, and outputs
# 4) source() and library() statements
# 5) Function definitions
# 6) Executed statements, if applicable (e.g., print, plot)


######################
# workspace setup
######################
#The workspace path needs to be changed upon initial use of this code
setwd("~/polybox/Jonas Peschel - Master Thesis Share/05 Data/Adoption-barriers-for-EV-in-Switzerland")
getwd()

#clearing work environment
rm(list=ls())

######################
# library statements
######################
library(ggplot2) # if package is not installed: install.packages("ggplot2")
library(lattice) # if package is not installed: install.packages("lattice")
library(survival) # if package is not installed: install.packages("survival")
library(Formula) # if package is not installed: install.packages("Formula")
library(Hmisc) # if package is not installed: install.packages("Hmisc")
library(dplyr) # if package is not installed: install.packages("dplyr")


######################
# data import
######################
source("data_import.R")


######################
# descriptive statistics
######################

# gender
d_gender <- describe(d_noSL1$Q4_gender) # female = 0 | male = 1 | other = 2

# age
d_age <- describe(d_noSL1$Q5_age) # age in years as an integer number

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
age_group_ranges <- c("18-24", 
                      "25-44", 
                      "45-64", 
                      "65-79", 
                      "80 and above"
                      )
d_age = tibble(        "Age group ID" = age_group_ID, 
                         "Age Groups" = age_group_ranges, 
                             "Survey" = NA, 
               "2015 Mobility Census" = NA
               )

# filling in age groups
age_group_counter_18_24 <- as.integer(0) # initializes age counter for age 18-24
age_group_counter_25_44 <- as.integer(0) # initializes age counter for age 25-44
age_group_counter_45_64 <- as.integer(0) # initializes age counter for age 34-64
age_group_counter_65_79 <- as.integer(0) # initializes age counter for age 65-79
age_group_counter_80plus <- as.integer(0) # initializes age counter for age 80 and above

for (i in 1:n_no_soft_launch_1){
  if ((18 <= d_noSL1$Q5_age[i]) & (d_noSL1$Q5_age[i] <= 24)){
    age_group_counter_18_24 <- 1 + age_group_counter_18_24
  }
  
  if ((25 <= d_noSL1$Q5_age[i]) & (d_noSL1$Q5_age[i] <= 44)){
    age_group_counter_25_44 <- 1 + age_group_counter_25_44
  }
  
  if ((45 <= d_noSL1$Q5_age[i]) & (d_noSL1$Q5_age[i] <= 64)){
    age_group_counter_45_64 <- 1 + age_group_counter_45_64
  }
  
  if ((65 <= d_noSL1$Q5_age[i]) & (d_noSL1$Q5_age[i] <= 79)){
    age_group_counter_65_79 <- 1 + age_group_counter_65_79
  }
  
  if ((80 <= d_noSL1$Q5_age[i]) & (d_noSL1$Q5_age[i] <= 120)){
    age_group_counter_80plus <- 1 + age_group_counter_80plus
  }
}

d_age$Survey[1:5] <- c(age_group_counter_18_24, 
                       age_group_counter_25_44, 
                       age_group_counter_45_64, 
                       age_group_counter_65_79, 
                       age_group_counter_80plus
                       )
d_age <- mutate(d_age, "Percentage of Survey" = d_age$Survey / sum(d_age$Survey))

# calculation validity check
# print("the number of participants is")
# print(length(d_noSL1$Q5_age))
# print("the total number of counted ages is")
# print(age_group_counter_18_24 + age_group_counter_25_44 + age_group_counter_45_64 + age_group_counter_65_79 + age_group_counter_80plus)


#####################
# plotting of data
#####################


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
