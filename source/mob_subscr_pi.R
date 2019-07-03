# Q30, 32, 34, 36, 38 Mobility subscriptions 1, 2, 3, 4, 5 purchase intent
##########################################

# Subscrption purchase intent categories are defined below. Behind each category there is the Qualtrics coding value
# 5 Very interested	5
# 4 Interested	4
# 3 Neutral	3
# 2 Slightly uninterested	2
# 1 Not interested at all	1
# I do not know	-1


# setup of data frame
# each column has the count of occurences in the respective group
mob_subscr_pi_group_ID <- 1:6
mob_subscr_pi_group_ranges <- c(
  "5 Very interested",
  "4 Interested",
  "3 Neutral",
  "2 Slightly uninterested",
  "1 Not interested at all",
  "I do not know"
)

# Setup tibble structure for data storage
d_mob_subscr_pi = tibble(
  "Group ID" = mob_subscr_pi_group_ID, 
  "Groups" = mob_subscr_pi_group_ranges, 
  "Subscription 1" = NA,
  "Subscription 2" = NA,
  "Subscription 3" = NA,
  "Subscription 4" = NA,
  "Subscription 5" = NA
)

# initializing counters for each item
mob_subscr_pi1_group_counter_5 <- as.integer(0) # coded 5
mob_subscr_pi1_group_counter_4<- as.integer(0) # coded 4
mob_subscr_pi1_group_counter_3 <- as.integer(0) # coded 3
mob_subscr_pi1_group_counter_2 <- as.integer(0) # coded 2
mob_subscr_pi1_group_counter_1 <- as.integer(0) # coded 1
mob_subscr_pi1_group_counter_dont_know <- as.integer(0) # coded -1

mob_subscr_pi2_group_counter_5 <- as.integer(0) # coded 5
mob_subscr_pi2_group_counter_4<- as.integer(0) # coded 4
mob_subscr_pi2_group_counter_3 <- as.integer(0) # coded 3
mob_subscr_pi2_group_counter_2 <- as.integer(0) # coded 2
mob_subscr_pi2_group_counter_1 <- as.integer(0) # coded 1
mob_subscr_pi2_group_counter_dont_know <- as.integer(0) # coded -1

mob_subscr_pi3_group_counter_5 <- as.integer(0) # coded 5
mob_subscr_pi3_group_counter_4<- as.integer(0) # coded 4
mob_subscr_pi3_group_counter_3 <- as.integer(0) # coded 3
mob_subscr_pi3_group_counter_2 <- as.integer(0) # coded 2
mob_subscr_pi3_group_counter_1 <- as.integer(0) # coded 1
mob_subscr_pi3_group_counter_dont_know <- as.integer(0) # coded -1

mob_subscr_pi4_group_counter_5 <- as.integer(0) # coded 5
mob_subscr_pi4_group_counter_4<- as.integer(0) # coded 4
mob_subscr_pi4_group_counter_3 <- as.integer(0) # coded 3
mob_subscr_pi4_group_counter_2 <- as.integer(0) # coded 2
mob_subscr_pi4_group_counter_1 <- as.integer(0) # coded 1
mob_subscr_pi4_group_counter_dont_know <- as.integer(0) # coded -1

mob_subscr_pi5_group_counter_5 <- as.integer(0) # coded 5
mob_subscr_pi5_group_counter_4<- as.integer(0) # coded 4
mob_subscr_pi5_group_counter_3 <- as.integer(0) # coded 3
mob_subscr_pi5_group_counter_2 <- as.integer(0) # coded 2
mob_subscr_pi5_group_counter_1 <- as.integer(0) # coded 1
mob_subscr_pi5_group_counter_dont_know <- as.integer(0) # coded -1

# counting occurences for each group
for (i in 1:n_no_soft_launch_1_and_2){
# pi 1/5
  if (
    ((grepl("5", d_noSL12$`Q30_mob-subscr1-PI`[i], fixed = TRUE)) == TRUE)
  )
  {
    mob_subscr_pi1_group_counter_5 <- 1 + mob_subscr_pi1_group_counter_5
  }
  
  if (
    ((grepl("4", d_noSL12$`Q30_mob-subscr1-PI`[i], fixed = TRUE)) == TRUE)
  )
  {
    mob_subscr_pi1_group_counter_4 <- 1 + mob_subscr_pi1_group_counter_4
  }
  
  if (
    ((grepl("3", d_noSL12$`Q30_mob-subscr1-PI`[i], fixed = TRUE)) == TRUE)
  )
  {
    mob_subscr_pi1_group_counter_3 <- 1 + mob_subscr_pi1_group_counter_3
  }
  
  if (
    ((grepl("2", d_noSL12$`Q30_mob-subscr1-PI`[i], fixed = TRUE)) == TRUE)
  )
  {
    mob_subscr_pi1_group_counter_2 <- 1 + mob_subscr_pi1_group_counter_2
  }
  
  if (
    ((grepl("1", d_noSL12$`Q30_mob-subscr1-PI`[i], fixed = TRUE)) == TRUE) &
    ((grepl("-1", d_noSL12$`Q30_mob-subscr1-PI`[i], fixed = TRUE)) == FALSE)
  )
  {
    mob_subscr_pi1_group_counter_1 <- 1 + mob_subscr_pi1_group_counter_1
  }
  
  if (
    ((grepl("-1", d_noSL12$`Q30_mob-subscr1-PI`[i], fixed = TRUE)) == TRUE)
  )
  {
    mob_subscr_pi1_group_counter_dont_know <- 1 + mob_subscr_pi1_group_counter_dont_know
  }
  
  # pi 2/5
  if (
    ((grepl("5", d_noSL12$`Q32_mob-subscr2-PI`[i], fixed = TRUE)) == TRUE)
  )
  {
    mob_subscr_pi2_group_counter_5 <- 1 + mob_subscr_pi2_group_counter_5
  }
  
  if (
    ((grepl("4", d_noSL12$`Q32_mob-subscr2-PI`[i], fixed = TRUE)) == TRUE)
  )
  {
    mob_subscr_pi2_group_counter_4 <- 1 + mob_subscr_pi2_group_counter_4
  }
  
  if (
    ((grepl("3", d_noSL12$`Q32_mob-subscr2-PI`[i], fixed = TRUE)) == TRUE)
  )
  {
    mob_subscr_pi2_group_counter_3 <- 1 + mob_subscr_pi2_group_counter_3
  }
  
  if (
    ((grepl("2", d_noSL12$`Q32_mob-subscr2-PI`[i], fixed = TRUE)) == TRUE)
  )
  {
    mob_subscr_pi2_group_counter_2 <- 1 + mob_subscr_pi2_group_counter_2
  }
  
  if (
    ((grepl("1", d_noSL12$`Q32_mob-subscr2-PI`[i], fixed = TRUE)) == TRUE) &
    ((grepl("-1", d_noSL12$`Q32_mob-subscr2-PI`[i], fixed = TRUE)) == FALSE)
  )
  {
    mob_subscr_pi2_group_counter_1 <- 1 + mob_subscr_pi2_group_counter_1
  }
  
  if (
    ((grepl("-1", d_noSL12$`Q32_mob-subscr2-PI`[i], fixed = TRUE)) == TRUE)
  )
  {
    mob_subscr_pi2_group_counter_dont_know <- 1 + mob_subscr_pi2_group_counter_dont_know
  }
  
  # pi 3/5
  if (
    ((grepl("5", d_noSL12$`Q34_mob-subscr3-PI`[i], fixed = TRUE)) == TRUE)
  )
  {
    mob_subscr_pi3_group_counter_5 <- 1 + mob_subscr_pi3_group_counter_5
  }
  
  if (
    ((grepl("4", d_noSL12$`Q34_mob-subscr3-PI`[i], fixed = TRUE)) == TRUE)
  )
  {
    mob_subscr_pi3_group_counter_4 <- 1 + mob_subscr_pi3_group_counter_4
  }
  
  if (
    ((grepl("3", d_noSL12$`Q34_mob-subscr3-PI`[i], fixed = TRUE)) == TRUE)
  )
  {
    mob_subscr_pi3_group_counter_3 <- 1 + mob_subscr_pi3_group_counter_3
  }
  
  if (
    ((grepl("2", d_noSL12$`Q34_mob-subscr3-PI`[i], fixed = TRUE)) == TRUE)
  )
  {
    mob_subscr_pi3_group_counter_2 <- 1 + mob_subscr_pi3_group_counter_2
  }
  
  if (
    ((grepl("1", d_noSL12$`Q34_mob-subscr3-PI`[i], fixed = TRUE)) == TRUE) &
    ((grepl("-1", d_noSL12$`Q34_mob-subscr3-PI`[i], fixed = TRUE)) == FALSE)
  )
  {
    mob_subscr_pi3_group_counter_1 <- 1 + mob_subscr_pi3_group_counter_1
  }
  
  if (
    ((grepl("-1", d_noSL12$`Q34_mob-subscr3-PI`[i], fixed = TRUE)) == TRUE)
  )
  {
    mob_subscr_pi3_group_counter_dont_know <- 1 + mob_subscr_pi3_group_counter_dont_know
  }
  
  # pi 4/5
  if (
    ((grepl("5", d_noSL12$`Q36_mob-subscr4-PI`[i], fixed = TRUE)) == TRUE)
  )
  {
    mob_subscr_pi4_group_counter_5 <- 1 + mob_subscr_pi4_group_counter_5
  }
  
  if (
    ((grepl("4", d_noSL12$`Q36_mob-subscr4-PI`[i], fixed = TRUE)) == TRUE)
  )
  {
    mob_subscr_pi4_group_counter_4 <- 1 + mob_subscr_pi4_group_counter_4
  }
  
  if (
    ((grepl("3", d_noSL12$`Q36_mob-subscr4-PI`[i], fixed = TRUE)) == TRUE)
  )
  {
    mob_subscr_pi4_group_counter_3 <- 1 + mob_subscr_pi4_group_counter_3
  }
  
  if (
    ((grepl("2", d_noSL12$`Q36_mob-subscr4-PI`[i], fixed = TRUE)) == TRUE)
  )
  {
    mob_subscr_pi4_group_counter_2 <- 1 + mob_subscr_pi4_group_counter_2
  }
  
  if (
    ((grepl("1", d_noSL12$`Q36_mob-subscr4-PI`[i], fixed = TRUE)) == TRUE) &
    ((grepl("-1", d_noSL12$`Q36_mob-subscr4-PI`[i], fixed = TRUE)) == FALSE)
  )
  {
    mob_subscr_pi4_group_counter_1 <- 1 + mob_subscr_pi4_group_counter_1
  }
  
  if (
    ((grepl("-1", d_noSL12$`Q36_mob-subscr4-PI`[i], fixed = TRUE)) == TRUE)
  )
  {
    mob_subscr_pi4_group_counter_dont_know <- 1 + mob_subscr_pi4_group_counter_dont_know
  }
  
  # pi 5/5
  if (
    ((grepl("5", d_noSL12$`Q38_mob-subscr5-PI`[i], fixed = TRUE)) == TRUE)
  )
  {
    mob_subscr_pi5_group_counter_5 <- 1 + mob_subscr_pi5_group_counter_5
  }
  
  if (
    ((grepl("4", d_noSL12$`Q38_mob-subscr5-PI`[i], fixed = TRUE)) == TRUE)
  )
  {
    mob_subscr_pi5_group_counter_4 <- 1 + mob_subscr_pi5_group_counter_4
  }
  
  if (
    ((grepl("3", d_noSL12$`Q38_mob-subscr5-PI`[i], fixed = TRUE)) == TRUE)
  )
  {
    mob_subscr_pi5_group_counter_3 <- 1 + mob_subscr_pi5_group_counter_3
  }
  
  if (
    ((grepl("2", d_noSL12$`Q38_mob-subscr5-PI`[i], fixed = TRUE)) == TRUE)
  )
  {
    mob_subscr_pi5_group_counter_2 <- 1 + mob_subscr_pi5_group_counter_2
  }
  
  if (
    ((grepl("1", d_noSL12$`Q38_mob-subscr5-PI`[i], fixed = TRUE)) == TRUE) &
    ((grepl("-1", d_noSL12$`Q38_mob-subscr5-PI`[i], fixed = TRUE)) == FALSE)
  )
  {
    mob_subscr_pi5_group_counter_1 <- 1 + mob_subscr_pi5_group_counter_1
  }
  
  if (
    ((grepl("-1", d_noSL12$`Q38_mob-subscr5-PI`[i], fixed = TRUE)) == TRUE)
  )
  {
    mob_subscr_pi5_group_counter_dont_know <- 1 + mob_subscr_pi5_group_counter_dont_know
  }
}

# writing counts for each group into dataset
d_mob_subscr_pi$`Subscription 1`[1:6] <- c(
  mob_subscr_pi1_group_counter_5,
  mob_subscr_pi1_group_counter_4,
  mob_subscr_pi1_group_counter_3,
  mob_subscr_pi1_group_counter_2,
  mob_subscr_pi1_group_counter_1,
  mob_subscr_pi1_group_counter_dont_know
)
d_mob_subscr_pi$`Subscription 2`[1:6] <- c(
  mob_subscr_pi2_group_counter_5,
  mob_subscr_pi2_group_counter_4,
  mob_subscr_pi2_group_counter_3,
  mob_subscr_pi2_group_counter_2,
  mob_subscr_pi2_group_counter_1,
  mob_subscr_pi2_group_counter_dont_know
)
d_mob_subscr_pi$`Subscription 3`[1:6] <- c(
  mob_subscr_pi3_group_counter_5,
  mob_subscr_pi3_group_counter_4,
  mob_subscr_pi3_group_counter_3,
  mob_subscr_pi3_group_counter_2,
  mob_subscr_pi3_group_counter_1,
  mob_subscr_pi3_group_counter_dont_know
)
d_mob_subscr_pi$`Subscription 4`[1:6] <- c(
  mob_subscr_pi4_group_counter_5,
  mob_subscr_pi4_group_counter_4,
  mob_subscr_pi4_group_counter_3,
  mob_subscr_pi4_group_counter_2,
  mob_subscr_pi4_group_counter_1,
  mob_subscr_pi4_group_counter_dont_know
)
d_mob_subscr_pi$`Subscription 5`[1:6] <- c(
  mob_subscr_pi5_group_counter_5,
  mob_subscr_pi5_group_counter_4,
  mob_subscr_pi5_group_counter_3,
  mob_subscr_pi5_group_counter_2,
  mob_subscr_pi5_group_counter_1,
  mob_subscr_pi5_group_counter_dont_know
)

# Percentage of total calculation
d_mob_subscr_pi <- mutate(d_mob_subscr_pi, "Percentage of Subscription 1" = d_mob_subscr_pi$`Subscription 1` / sum(d_mob_subscr_pi$`Subscription 1`))
d_mob_subscr_pi <- mutate(d_mob_subscr_pi, "Percentage of Subscription 2" = d_mob_subscr_pi$`Subscription 2` / sum(d_mob_subscr_pi$`Subscription 2`))
d_mob_subscr_pi <- mutate(d_mob_subscr_pi, "Percentage of Subscription 3" = d_mob_subscr_pi$`Subscription 3` / sum(d_mob_subscr_pi$`Subscription 3`))
d_mob_subscr_pi <- mutate(d_mob_subscr_pi, "Percentage of Subscription 4" = d_mob_subscr_pi$`Subscription 4` / sum(d_mob_subscr_pi$`Subscription 4`))
d_mob_subscr_pi <- mutate(d_mob_subscr_pi, "Percentage of Subscription 5" = d_mob_subscr_pi$`Subscription 5` / sum(d_mob_subscr_pi$`Subscription 5`))

# save output as csv file
write.csv(d_mob_subscr_pi, file = "output/d_mob_subscr_pi.csv", row.names = FALSE)

# variable cleanup
rm(mob_subscr_pi_group_ID,
   mob_subscr_pi_group_ranges,
   mob_subscr_pi1_group_counter_5,
   mob_subscr_pi1_group_counter_4,
   mob_subscr_pi1_group_counter_3,
   mob_subscr_pi1_group_counter_2,
   mob_subscr_pi1_group_counter_1,
   mob_subscr_pi1_group_counter_dont_know,
   mob_subscr_pi2_group_counter_5,
   mob_subscr_pi2_group_counter_4,
   mob_subscr_pi2_group_counter_3,
   mob_subscr_pi2_group_counter_2,
   mob_subscr_pi2_group_counter_1,
   mob_subscr_pi2_group_counter_dont_know,
   mob_subscr_pi3_group_counter_5,
   mob_subscr_pi3_group_counter_4,
   mob_subscr_pi3_group_counter_3,
   mob_subscr_pi3_group_counter_2,
   mob_subscr_pi3_group_counter_1,
   mob_subscr_pi3_group_counter_dont_know,
   mob_subscr_pi4_group_counter_5,
   mob_subscr_pi4_group_counter_4,
   mob_subscr_pi4_group_counter_3,
   mob_subscr_pi4_group_counter_2,
   mob_subscr_pi4_group_counter_1,
   mob_subscr_pi4_group_counter_dont_know,
   mob_subscr_pi5_group_counter_5,
   mob_subscr_pi5_group_counter_4,
   mob_subscr_pi5_group_counter_3,
   mob_subscr_pi5_group_counter_2,
   mob_subscr_pi5_group_counter_1,
   mob_subscr_pi5_group_counter_dont_know
)

