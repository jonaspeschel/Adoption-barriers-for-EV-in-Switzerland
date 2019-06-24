############################ Setup of environment
#The workspace path needs to be changed upon initial use of this code
setwd("~/polybox/Jonas Peschel - Master Thesis Share/05 Data/Adoption-barriers-for-EV-in-Switzerland")
getwd()

#clearing work environment
rm(list=ls())

############################ Import of data
#installation of package, if required:
#install.packages("readr")

library(readr)
d <- read_csv("survey v4.4-data for R.csv", col_types = cols(
  IPAddress = col_skip(), 
  Q1_consent = col_integer(), 
  StartDate = col_datetime(format = "%Y-%m-%d %H:%M:%S"),
  EndDate = col_datetime(format = "%Y-%m-%d %H:%M:%S"),
  "Duration (in seconds)" = col_integer(),
  Status = col_skip(),
  IPAddress = col_skip(),
  Progress = col_skip(),
  Finished = col_skip(),
  RecordedDate = col_datetime(format = "%Y-%m-%d %H:%M:%S"),
  ResponseId = col_skip(),
  RecipientLastName = col_skip(),
  RecipientFirstName = col_skip(),
  RecipientEmail = col_skip(),
  ExternalReference = col_skip(),
  LocationLatitude = col_skip(),
  LocationLongitude = col_skip(),
  DistributionChannel = col_skip(),
  "RelevantID_First Click" = col_skip(),
  "RelevantID_Last Click" = col_skip(),
  "RelevantID_Page Submit" = col_skip(),
  "RelevantID_Click Count" = col_skip(),
  Q1_consent = col_integer(),
  MetaDataQ_Browser = col_skip(),
  MetaDataQ_Version = col_skip(),
  "MetaDataQ_Operating System" = col_skip(),
  MetaDataQ_Resolution = col_skip(),
  "Q2_lang-DE" = col_integer(),
  Q3_lang_EN = col_integer(),
  Q4_gender = col_integer(),
  Q5_age = col_integer(),
  Q6_residence = col_integer(),
  "Q7_household-size" = col_integer(),
  "Q8_household-income" = col_integer(),
  "Q9_drivers-license" = col_integer(),
  "Q11_car-purch-intent" = col_integer(),
  "Q18_PT-spend" = col_integer(),
  "Q19_PT-spend-t" = col_integer(),
  "Q21_car-spend" = col_integer(),
  "Q22_car-spend-t" = col_integer(),
  "Q24_EV-range-commute" = col_integer(),
  "Q25_EV-range-all" = col_integer(),
  "Q27_mob-subscr-inter" = col_integer(),
  "Q28_mob-subscr-WTP" = col_integer(),
  "Q30_mob-subscr1-PI" = col_integer(),
  "Q32_mob-subscr2-PI" = col_integer(),
  "Q34_mob-subscr3-PI" = col_integer(),
  "Q36_mob-subscr4-PI" = col_integer(),
  "Q38_mob-subscr5-PI" = col_integer(),
  "Q39_mob-subscr-rank_1" = col_integer(),
  "Q39_mob-subscr-rank_2" = col_integer(),
  "Q39_mob-subscr-rank_3" = col_integer(),
  "Q39_mob-subscr-rank_4" = col_integer(),
  "Q39_mob-subscr-rank_5" = col_integer(),
  "Q39_mob-subscr-rank_0" = col_integer(),
  opp = col_skip(),
  rid = col_skip(),
  V = col_skip(),
  gid = col_skip(),
  sname = col_skip(),
  enc = col_skip(),
  isNew = col_skip(),
  Q_TotalDuration = col_skip(),
  test = col_skip(),
  version = col_skip(),
  test2 = col_skip(),
  gc = col_skip(),
  term = col_skip(),
  "Q42_end-of-survey - Topics" = col_skip(),
  "Q12_EV-experience_12_TEXT - Topics" = col_skip(),
  "Q14_EV-use_13_TEXT - Topics" = col_skip(),
  "Q41_EV-disadv_18_TEXT - Topics" = col_skip(),
  "Q40_EV-adv_12_TEXT - Topics" = col_skip(),
  "EV adv. others - Topics" = col_skip(),
  "Q16_PT-subscr_10_TEXT - Topics" = col_skip(),
  "Q13_12_TEXT - Topics" = col_skip()
  ))
#removal of unwanted data on top
d <- d[-c(1, 2), ]

######################### recoding of values
#recoding of ages
for (i in 1:length(d$StartDate)){
  #print(d$Q5_age[i])
  if(d$Q5_age[i]>100){
    d$Q5_age[i]<- 2019 - d$Q5_age[i]}
  #print(d$Q5_age[i])
}

######################## definition of data sets for analysis
#soft launch 1: 2019-05-21 until 2019-05-23, n=42
#soft launch 2: 2019-05-27 until 2019-05-28, n=21
#full launch: 2019-05-30 until 2019-06-05, n=280
d_noSL1 <- d[-c(1:42), ]
d_noSL12 <- d[-c(1:63), ]

#removal of values by recording date
#for (i in 1:length(d$StartDate)){
#      if(("2019-05-21"<=d$RecordedDate[i])&(d$RecordedDate[i]<="2019-05-23")){
#       print(d$RecordedDate[i])}
#       d_noSF1[c(i), ] <- d[c(i), ]
#}

######################## descriptive statistics
#installation of package, if required:
#install.packages("dplyr")
library(dplyr)

#installation of package, if required:
#install.packages("Hmisc")
library(Hmisc)

#gender
# female = 0 | male = 1 | other = 2
describe(d_noSL1$Q4_gender) 

#age
#age in years as an integer number
describe(d_noSL1$Q5_age)

#age groups are set up in accordance to the groups in the 2015 Swiss mobility survey:
#' not used, but used in mobility survey: age 6-17
#' group 1: age 18-24
#' group 2: age 25-44
#' group 3: age 34-64
#' group 4: age 65-79
#' group 5: age 80 and above


#setup of data frame for age
#each column has the count of occurences in the respective age group
age_group_ID <- 1:5
age_group_ranges <- c("18-24", "25-44", "45-64", "65-79", "80 and above")
d_age = tibble("Age group ID" = age_group_ID, "Age Groups" = age_group_ranges, "Survey"=NA, "2015 Mobility Census"=NA)

##################### plotting of data
install.packages("ggplot2")
library(ggplot2)

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