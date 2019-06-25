
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

# 1) gender
##########################################
d_gender <- describe(d_noSL1$Q4_gender) # female = 0 | male = 1 | other = 2

# 2) age
##########################################
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

# initializing age groups
age_group_counter_18_24 <- as.integer(0) # initializes age counter for age 18-24
age_group_counter_25_44 <- as.integer(0) # initializes age counter for age 25-44
age_group_counter_45_64 <- as.integer(0) # initializes age counter for age 34-64
age_group_counter_65_79 <- as.integer(0) # initializes age counter for age 65-79
age_group_counter_80plus <- as.integer(0) # initializes age counter for age 80 and above

# counting age occurences for each age group
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

# writing age counts for each group into dataset d_age
d_age$Survey[1:5] <- c(age_group_counter_18_24, 
                       age_group_counter_25_44, 
                       age_group_counter_45_64, 
                       age_group_counter_65_79, 
                       age_group_counter_80plus
)

# calculation validity check
# print("the number of participants is")
# print(length(d_noSL1$Q5_age))
# print("the total number of counted ages is")
# print(age_group_counter_18_24 + age_group_counter_25_44 + age_group_counter_45_64 + age_group_counter_65_79 + age_group_counter_80plus)

# writing age counts from 2015 mobility census for each group into dataset d_age
d_age$`2015 Mobility Census`[1:5] <- c(4541,
                                       13864,
                                       18209,
                                       9559,
                                       2463
) # data from 2015 mobility census.

# Percentage of total calculation
d_age <- mutate(d_age, "Percentage of Survey" = d_age$Survey / sum(d_age$Survey))
d_age <- mutate(d_age, "Percentage of 2015 Mobility Census" = d_age$`2015 Mobility Census` / sum(d_age$`2015 Mobility Census`))

# save output as csv file
write.csv(d_age, file = "d_age.csv", row.names = FALSE)

# 3) regions
##########################################

# region groups are set up in accordance to the groups in the 2015 Swiss mobility survey:
#' group 1: CH01 Lake Geneva (GE/VS/VD)
#' group 2: CH02 Espace Mittelland (BE/FR/JU/NE/SO)
#' group 3: CH03 Northwestern Switzerland (AG/BL/BS)
#' group 4: CH04 Zurich (ZH)
#' group 5: CH05 Easter Switzerland (AI/AR/GL/GR/SG/SH/TG)
#' group 6: CH06 Central Switzerland (LU/NW/OW/SZ/UR/ZG)
#' group 7: CH07 Ticino (TI)

# setup of data frame for region
# each column has the count of occurences in the respective regional group
region_group_ID <- 1:7
region_group_ranges <- c("CH01 Lake Geneva (GE/VS/VD)", 
                      "CH02 Espace Mittelland (BE/FR/JU/NE/SO)", 
                      "CH03 Northwestern Switzerland (AG/BL/BS)", 
                      "CH04 Zurich (ZH)", 
                      "CH05 Easter Switzerland (AI/AR/GL/GR/SG/SH/TG)",
                      "CH06 Central Switzerland (LU/NW/OW/SZ/UR/ZG)",
                      "CH07 Ticino (TI)"
)

d_region = tibble(        "Region group ID" = region_group_ID, 
                       "Region Groups" = region_group_ranges, 
                       "Survey" = NA, 
                       "2015 Mobility Census" = NA
)

# initializing region groups
region_group_counter_1 <- as.integer(0) # initializes age counter for region 1. Qualtrics coding of cantons: 8 (GE), 23 (VD), 24 (VS)
region_group_counter_2 <- as.integer(0) # initializes age counter for region 2. Qualtrics coding of cantons: 6 (BE), 7 (FR), 11 (JU), 13 (NE), 18 (SO)
region_group_counter_3 <- as.integer(0) # initializes age counter for region 3. Qualtrics coding of cantons: 1 (AG), 4 (BL), 5 (BS)
region_group_counter_4 <- as.integer(0) # initializes age counter for region 4. Qualtrics coding of cantons: 25 (ZH)
region_group_counter_5 <- as.integer(0) # initializes age counter for region 5. Qualtrics coding of cantons: 2 (AR), 3 (AI), 9 (GL), 10 (GR), 16 (SH), 19 (SG), 21 (TG)
region_group_counter_6 <- as.integer(0) # initializes age counter for region 6. Qualtrics coding of cantons: 12 (LU), 14 (NW), 15 (OW), 17 (SZ), 22 (UR), 26 (ZG)
region_group_counter_7 <- as.integer(0) # initializes age counter for region 7. Qualtrics coding of cantons: 20 (TI)

# counting region occurences for each region group
for (i in 1:n_no_soft_launch_1){
  if ((d_noSL1$Q6_residence[i]==8) |
      (d_noSL1$Q6_residence[i]==23) |
      (d_noSL1$Q6_residence[i]==24)
      ){
    region_group_counter_1 <- 1 + region_group_counter_1
  }
  if ((d_noSL1$Q6_residence[i]==6) |
      (d_noSL1$Q6_residence[i]==7) |
      (d_noSL1$Q6_residence[i]==11) |
      (d_noSL1$Q6_residence[i]==13) |
      (d_noSL1$Q6_residence[i]==18)
  ){
    region_group_counter_2 <- 1 + region_group_counter_2
  }
  if ((d_noSL1$Q6_residence[i]==1) |
      (d_noSL1$Q6_residence[i]==4) |
      (d_noSL1$Q6_residence[i]==5)
  ){
    region_group_counter_3 <- 1 + region_group_counter_3
  }
  if ((d_noSL1$Q6_residence[i]==25)
  ){
    region_group_counter_4 <- 1 + region_group_counter_4
  }
  if ((d_noSL1$Q6_residence[i]==2) |
      (d_noSL1$Q6_residence[i]==3) |
      (d_noSL1$Q6_residence[i]==9) |
      (d_noSL1$Q6_residence[i]==10) |
      (d_noSL1$Q6_residence[i]==16) |
      (d_noSL1$Q6_residence[i]==19) |
      (d_noSL1$Q6_residence[i]==21)
  ){
    region_group_counter_5 <- 1 + region_group_counter_5
  }
  if ((d_noSL1$Q6_residence[i]==12) |
      (d_noSL1$Q6_residence[i]==14) |
      (d_noSL1$Q6_residence[i]==15) |
      (d_noSL1$Q6_residence[i]==17) |
      (d_noSL1$Q6_residence[i]==22) |
      (d_noSL1$Q6_residence[i]==26)
  ){
    region_group_counter_6 <- 1 + region_group_counter_6
  }
  if ((d_noSL1$Q6_residence[i]==20)
  ){
    region_group_counter_7 <- 1 + region_group_counter_7
  }
}

# writing region counts for each group into dataset d_region
d_region$Survey[1:7] <- c(region_group_counter_1,
                          region_group_counter_2,
                          region_group_counter_3,
                          region_group_counter_4,
                          region_group_counter_5,
                          region_group_counter_6,
                          region_group_counter_7

)

# writing region counts from 2015 mobility census for each group into dataset d_region
d_region$`2015 Mobility Census`[1:7] <- c(12116,
                                          12864,
                                          7511,
                                          6433,
                                          8968,
                                          6706,
                                          2492
) # data from 2015 mobility census.

# Percentage of total calculation
d_region <- mutate(d_region, "Percentage of Survey" = d_region$Survey / sum(d_region$Survey))
d_region <- mutate(d_region, "Percentage of 2015 Mobility Census" = d_region$`2015 Mobility Census` / sum(d_region$`2015 Mobility Census`))

# save output as csv file
write.csv(d_region, file = "d_region.csv", row.names = FALSE)

#####################
# plotting of data
#####################

ggplot(data = d_age, mapping = aes(x = d_age$`Age Groups`, y = d_age$`Percentage of Survey`)) + geom_col()
ggsave("age.png", width = 5, height = 5)
?geom_col

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
