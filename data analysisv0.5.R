
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
source("source/data_import.R")


######################
# descriptive statistics
######################

# 1) gender
source("source/gender.R")

# 2) age
source("source/age.R")

# 3) regions
source("source/regions.R")

# 4) income
source("source/income.R")

# 5) EV driving experience
source("source/ev_experience.R")

# 6) EV use
source("source/ev_use.R")

# 7) mobility usage
source("source/mobility_usage.R")

# 8) Public transport subscriptions
source("source/pt_subscr.R")

#####################
# plotting of data
#####################

# plotting of age distributions
ggplot(data = d_age, mapping = aes(x = d_age$`Age Groups`, y = d_age$`Percentage of Survey`)) + geom_col()
ggsave("age.png", width = 5, height = 5)

# plotting of region distributions
ggplot(data = d_region, mapping = aes(x = d_region$`Region Groups`, y = d_region$`Percentage of Survey`)) + geom_col()
ggsave("region.png", width = 5, height = 5)

op <- par(mfrow = c(3, 3))


hist(d$'Q18_PT-spend')
hist(d_age$`Percentage of Survey`)

hist(d$'Q2_lang-DE')
hist(d[[10]])
hist(d[[11]])
for (i in 10:15){
hist(d[[i]])
boxplot(d[[i]])  
}
boxplot(d$"Q5_age")
