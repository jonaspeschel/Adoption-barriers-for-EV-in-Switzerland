# Q27 Mobility subscription interest
##########################################

# Subscrption interest categories are defined below. Behind each category there is the Qualtrics coding value
# 5 Very interested	5
# 4 Interested	4
# 3 Neutral	3
# 2 Slightly uninterested	2
# 1 Not interested at all	1
# I do not know	-1


# setup of data frame
# each column has the count of occurences in the respective group
mob_subscr_inter_group_ID <- 1:6
mob_subscr_inter_group_ranges <- c(
  "5 Very interested",
  "4 Interested",
  "3 Neutral",
  "2 Slightly uninterested",
  "1 Not interested at all",
  "I do not know"
)

# Setup tibble structure for data storage
d_mob_subscr_inter = tibble(
  "Group ID" = mob_subscr_inter_group_ID, 
  "Groups" = mob_subscr_inter_group_ranges, 
  "Survey" = NA
)

# initializing counters for each item
mob_subscr_inter_group_counter_5 <- as.integer(0) # coded 5
mob_subscr_inter_group_counter_4<- as.integer(0) # coded 4
mob_subscr_inter_group_counter_3 <- as.integer(0) # coded 3
mob_subscr_inter_group_counter_2 <- as.integer(0) # coded 2
mob_subscr_inter_group_counter_1 <- as.integer(0) # coded 1
mob_subscr_inter_group_counter_dont_know <- as.integer(0) # coded -1

# counting occurences for each group
for (i in 1:n_no_soft_launch_1){
  if (
    ((grepl("5", d_noSL1$`Q27_mob-subscr-inter`[i], fixed = TRUE)) == TRUE)
  )
  {
    mob_subscr_inter_group_counter_5 <- 1 + mob_subscr_inter_group_counter_5
  }
  
  if (
    ((grepl("4", d_noSL1$`Q27_mob-subscr-inter`[i], fixed = TRUE)) == TRUE)
  )
  {
    mob_subscr_inter_group_counter_4 <- 1 + mob_subscr_inter_group_counter_4
  }
  
  if (
    ((grepl("3", d_noSL1$`Q27_mob-subscr-inter`[i], fixed = TRUE)) == TRUE)
  )
  {
    mob_subscr_inter_group_counter_3 <- 1 + mob_subscr_inter_group_counter_3
  }
  
  if (
    ((grepl("2", d_noSL1$`Q27_mob-subscr-inter`[i], fixed = TRUE)) == TRUE)
  )
  {
    mob_subscr_inter_group_counter_2 <- 1 + mob_subscr_inter_group_counter_2
  }
  
  if (
    ((grepl("1", d_noSL1$`Q27_mob-subscr-inter`[i], fixed = TRUE)) == TRUE) &
    ((grepl("-1", d_noSL1$`Q27_mob-subscr-inter`[i], fixed = TRUE)) == FALSE)
  )
  {
    mob_subscr_inter_group_counter_1 <- 1 + mob_subscr_inter_group_counter_1
  }
  
  if (
    ((grepl("-1", d_noSL1$`Q27_mob-subscr-inter`[i], fixed = TRUE)) == TRUE)
  )
  {
    mob_subscr_inter_group_counter_dont_know <- 1 + mob_subscr_inter_group_counter_dont_know
  }
  
}

# writing counts for each group into dataset
d_mob_subscr_inter$Survey[1:6] <- c(
  mob_subscr_inter_group_counter_5,
  mob_subscr_inter_group_counter_4,
  mob_subscr_inter_group_counter_3,
  mob_subscr_inter_group_counter_2,
  mob_subscr_inter_group_counter_1,
  mob_subscr_inter_group_counter_dont_know
)

# Percentage of total calculation
d_mob_subscr_inter <- mutate(d_mob_subscr_inter, "Percentage of Survey" = d_mob_subscr_inter$Survey / sum(d_mob_subscr_inter$Survey))

# save output as csv file
write.csv(d_mob_subscr_inter, file = "output/d_mob_subscr_inter.csv", row.names = FALSE)

# variable cleanup
rm(mob_subscr_inter_group_ID,
   mob_subscr_inter_group_ranges,
   mob_subscr_inter_group_counter_5,
   mob_subscr_inter_group_counter_4,
   mob_subscr_inter_group_counter_3,
   mob_subscr_inter_group_counter_2,
   mob_subscr_inter_group_counter_1,
   mob_subscr_inter_group_counter_dont_know
)

