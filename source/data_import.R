############################ Import of data
#installation of package, if required:
#install.packages("readr")

library(readr)
d <- read_csv("data_raw.csv", col_types = cols(
  Q1_consent = col_integer(), 
  StartDate = col_datetime(format = "%Y-%m-%d %H:%M:%S"),
  EndDate = col_datetime(format = "%Y-%m-%d %H:%M:%S"),
  "Duration (in seconds)" = col_integer(),
  Status = col_skip(),
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
d_noSL1 <- as_tibble(d_noSL1)
d_noSL12 <- d[-c(1:63), ]

# definition of data length
n_all <- length(d$StartDate)
n_no_soft_launch_1 <- length(d_noSL1$StartDate)
n_no_soft_launch_1_and_2 <- length(d_noSL12$StartDate)

#removal of values by recording date
#for (i in 1:length(d$StartDate)){
#      if(("2019-05-21"<=d$RecordedDate[i])&(d$RecordedDate[i]<="2019-05-23")){
#       print(d$RecordedDate[i])}
#       d_noSF1[c(i), ] <- d[c(i), ]
#}

# writing output in .csv files
write.csv(d, file = "d.csv", row.names = FALSE)
write.csv(d_noSL1, file = "d_noSL1.csv", row.names = FALSE)
write.csv(d_noSL12, file = "d_noSL12.csv", row.names = FALSE)
