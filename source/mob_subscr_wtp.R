# Q28 Mobility subscription willingness to pay
##########################################

# EV battery range for all distances categories are defined below. Behind each category there is the Qualtrics coding value
# 100 CHF or less  (1) 
# 101 to 200 CHF  (2) 
# 201 to 400 CHF  (3) 
# 301 to 400 CHF  (4) 
# 401 to 600 CHF  (5) 
# 601 to 800 CHF  (6) 
# 601 to 700 CHF  (7) 
# 801 to 1'000 CHF  (8) 
# 1'001 to 1'200 CHF  (9) 
# 1'201 to 1'400 CHF  (10) 
# 1'001 to 1'100 CHF  (11) 
# 1'101 to 1'200 CHF  (12) 
# 1'201 to 1'300 CHF  (13) 
# 1'301 to 1'400 CHF  (14) 
# More than 1'400 CHF  (15) 

# setup of data frame
# each column has the count of occurences in the respective group
mob_subscr_wtp_group_ID <- 1:15
mob_subscr_wtp_group_ranges <- c(
  "100 CHF or less",
  "101 to 200 CHF",
  "201 to 400 CHF",
  "301 to 400 CHF",
  "401 to 600 CHF",
  "601 to 800 CHF",
  "601 to 700 CHF",
  "801 to 1'000 CHF",
  "1'001 to 1'200 CHF",
  "1'201 to 1'400 CHF",
  "1'001 to 1'100 CHF",
  "1'101 to 1'200 CHF",
  "1'201 to 1'300 CHF",
  "1'301 to 1'400 CHF",
  "More than 1'400 CHF"
)

# Setup tibble structure for data storage
d_mob_subscr_wtp = tibble(
  "Mobility subscription WTP Group ID" = mob_subscr_wtp_group_ID, 
  "Mobility subscription WTP Groups" = mob_subscr_wtp_group_ranges, 
  "Survey" = NA
)

# initializing counters for each item
mob_subscr_wtp_group_counter_100 <- as.integer(0)
mob_subscr_wtp_group_counter_200 <- as.integer(0)
mob_subscr_wtp_group_counter_300 <- as.integer(0)
mob_subscr_wtp_group_counter_400 <- as.integer(0)
mob_subscr_wtp_group_counter_500 <- as.integer(0)
mob_subscr_wtp_group_counter_600 <- as.integer(0)
mob_subscr_wtp_group_counter_700 <- as.integer(0)
mob_subscr_wtp_group_counter_800 <- as.integer(0)
mob_subscr_wtp_group_counter_900 <- as.integer(0)
mob_subscr_wtp_group_counter_1000 <- as.integer(0)
mob_subscr_wtp_group_counter_1100 <- as.integer(0)
mob_subscr_wtp_group_counter_1200 <- as.integer(0)
mob_subscr_wtp_group_counter_1300 <- as.integer(0)
mob_subscr_wtp_group_counter_1400 <- as.integer(0)
mob_subscr_wtp_group_counter_1400plus <- as.integer(0)


# counting occurences for each group
for (i in 1:n_no_soft_launch_1){
  if (d_noSL1$`Q28_mob-subscr-WTP`[i] == 1)
  {
    mob_subscr_wtp_group_counter_100 <- 1 + mob_subscr_wtp_group_counter_100
  }
  if (d_noSL1$`Q28_mob-subscr-WTP`[i] == 2)
  {
    mob_subscr_wtp_group_counter_200 <- 1 + mob_subscr_wtp_group_counter_200
  }
  if (d_noSL1$`Q28_mob-subscr-WTP`[i] == 3)
  {
    mob_subscr_wtp_group_counter_300 <- 1 + mob_subscr_wtp_group_counter_300
  }
  if (d_noSL1$`Q28_mob-subscr-WTP`[i] == 4)
  {
    mob_subscr_wtp_group_counter_400 <- 1 + mob_subscr_wtp_group_counter_400
  }
  if (d_noSL1$`Q28_mob-subscr-WTP`[i] == 5)
  {
    mob_subscr_wtp_group_counter_500 <- 1 + mob_subscr_wtp_group_counter_500
  }
  if (d_noSL1$`Q28_mob-subscr-WTP`[i] == 6)
  {
    mob_subscr_wtp_group_counter_600 <- 1 + mob_subscr_wtp_group_counter_600
  }
  if (d_noSL1$`Q28_mob-subscr-WTP`[i] == 7)
  {
    mob_subscr_wtp_group_counter_700 <- 1 + mob_subscr_wtp_group_counter_700
  }
  if (d_noSL1$`Q28_mob-subscr-WTP`[i] == 8)
  {
    mob_subscr_wtp_group_counter_800 <- 1 + mob_subscr_wtp_group_counter_800
  }
  if (d_noSL1$`Q28_mob-subscr-WTP`[i] == 9)
  {
    mob_subscr_wtp_group_counter_900 <- 1 + mob_subscr_wtp_group_counter_900
  }
  if (d_noSL1$`Q28_mob-subscr-WTP`[i] == 10)
  {
    mob_subscr_wtp_group_counter_1000 <- 1 + mob_subscr_wtp_group_counter_1000
  }
  if (d_noSL1$`Q28_mob-subscr-WTP`[i] == 11)
  {
    mob_subscr_wtp_group_counter_1100 <- 1 + mob_subscr_wtp_group_counter_1100
  }
  if (d_noSL1$`Q28_mob-subscr-WTP`[i] == 12)
  {
    mob_subscr_wtp_group_counter_1200 <- 1 + mob_subscr_wtp_group_counter_1200
  }
  if (d_noSL1$`Q28_mob-subscr-WTP`[i] == 13)
  {
    mob_subscr_wtp_group_counter_1300 <- 1 + mob_subscr_wtp_group_counter_1300
  }
  if (d_noSL1$`Q28_mob-subscr-WTP`[i] == 14)
  {
    mob_subscr_wtp_group_counter_1400 <- 1 + mob_subscr_wtp_group_counter_1400
  }
  if (d_noSL1$`Q28_mob-subscr-WTP`[i] == 15)
  {
    mob_subscr_wtp_group_counter_1400plus <- 1 + mob_subscr_wtp_group_counter_1400plus
  }
  
}

# writing counts for each group into dataset
d_mob_subscr_wtp$Survey[1:15] <- c(
  mob_subscr_wtp_group_counter_100,
  mob_subscr_wtp_group_counter_200,
  mob_subscr_wtp_group_counter_300,
  mob_subscr_wtp_group_counter_400,
  mob_subscr_wtp_group_counter_500,
  mob_subscr_wtp_group_counter_600,
  mob_subscr_wtp_group_counter_700,
  mob_subscr_wtp_group_counter_800,
  mob_subscr_wtp_group_counter_900,
  mob_subscr_wtp_group_counter_1000,
  mob_subscr_wtp_group_counter_1100,
  mob_subscr_wtp_group_counter_1200,
  mob_subscr_wtp_group_counter_1300,
  mob_subscr_wtp_group_counter_1400,
  mob_subscr_wtp_group_counter_1400plus
)

# Percentage of total calculation
d_mob_subscr_wtp <- mutate(d_mob_subscr_wtp, "Percentage of Survey" = d_mob_subscr_wtp$Survey / sum(d_mob_subscr_wtp$Survey))

# save output as csv file
write.csv(d_mob_subscr_wtp, file = "output/d_mob_subscr_wtp.csv", row.names = FALSE)

# variable cleanup
rm(mob_subscr_wtp_group_ID,
   mob_subscr_wtp_group_ranges,
   mob_subscr_wtp_group_counter_100,
   mob_subscr_wtp_group_counter_200,
   mob_subscr_wtp_group_counter_300,
   mob_subscr_wtp_group_counter_400,
   mob_subscr_wtp_group_counter_500,
   mob_subscr_wtp_group_counter_600,
   mob_subscr_wtp_group_counter_700,
   mob_subscr_wtp_group_counter_800,
   mob_subscr_wtp_group_counter_900,
   mob_subscr_wtp_group_counter_1000,
   mob_subscr_wtp_group_counter_1100,
   mob_subscr_wtp_group_counter_1200,
   mob_subscr_wtp_group_counter_1300,
   mob_subscr_wtp_group_counter_1400,
   mob_subscr_wtp_group_counter_1400plus
)

