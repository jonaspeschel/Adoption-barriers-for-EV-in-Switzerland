# 8) Public transport subscriptions
##########################################

# Public transport subscription categories are defined below. Behind each category there is the Qualtrics coding value
# Half-Fare Card  	1
# Track 7 (replaced by Seven25 since 01.05.2019	2
# Seven25 (replaces Track 7 since 01.05.2019)  	8
# City ticket (eg City of Zurich)  	3
# Regional ticket (eg several zones in the canton of Zurich)  	4
# Point-to-point travel card (eg Zurich - Schaffhausen	5
# General subscription (valid at any time, all-of Switzerland)  	6
# Other subscription  	7
# None	0
# I do not know	-1


# setup of data frame
# each column has the count of occurences in the respective group
pt_subscr_group_ID <- 1:10
pt_subscr_group_ranges <- c(
  "Half-Fare Card",
  "Track 7 (replaced by Seven25 since 01.05.2019)",
  "Seven25 (replaces Track 7 since 01.05.2019)",
  "City ticket (eg City of Zurich)",
  "Regional ticket (eg several zones in the canton of Zurich)",
  "Point-to-point travel card (eg Zurich - Schaffhausen",
  "General subscription (valid at any time, all-of Switzerland)",
  "Other subscription",
  "None",
  "I do not know"
)

# Setup tibble structure for data storage
d_pt_subscr = tibble(
  "PT subscription group ID" = pt_subscr_group_ID, 
  "PT subscription Groups" = pt_subscr_group_ranges, 
  "Survey" = NA
)

# initializing counters for each item
pt_subscr_group_counter_half_fare <- as.integer(0) # coded 1
pt_subscr_group_counter_track_seven <- as.integer(0) # coded 2
pt_subscr_group_counter_seven_25 <- as.integer(0) # coded 8
pt_subscr_group_counter_city_ticket <- as.integer(0) # coded 3
pt_subscr_group_counter_regional_ticket <- as.integer(0) # coded 4
pt_subscr_group_counter_half_point_to_point_travel_card <- as.integer(0) # coded 5
pt_subscr_group_counter_general_subscription <- as.integer(0) # coded 6
pt_subscr_group_counter_other_subscription <- as.integer(0) # coded 7
pt_subscr_group_counter_none <- as.integer(0) # coded 0
pt_subscr_group_counter_dont_know <- as.integer(0) # coded -1

# counting occurences for each group
for (i in 1:n_no_soft_launch_1){
  if (
    ((grepl("1", d_noSL1$`Q16_PT-subscr`[i], fixed = TRUE)) == TRUE) &
    ((grepl("-1", d_noSL1$`Q16_PT-subscr`[i], fixed = TRUE)) == FALSE)
  )
  {
    pt_subscr_group_counter_half_fare <- 1 + pt_subscr_group_counter_half_fare
  }
  
  if (
    ((grepl("2", d_noSL1$`Q16_PT-subscr`[i], fixed = TRUE)) == TRUE)
  )
  {
    pt_subscr_group_counter_track_seven <- 1 + pt_subscr_group_counter_track_seven
  }
  
  if (
    ((grepl("8", d_noSL1$`Q16_PT-subscr`[i], fixed = TRUE)) == TRUE)
  )
  {
    pt_subscr_group_counter_seven_25 <- 1 + pt_subscr_group_counter_seven_25
  }  
  
  if (
    ((grepl("3", d_noSL1$`Q16_PT-subscr`[i], fixed = TRUE)) == TRUE)
  )
  {
    pt_subscr_group_counter_city_ticket <- 1 + pt_subscr_group_counter_city_ticket
  }  
  
  if (
    ((grepl("4", d_noSL1$`Q16_PT-subscr`[i], fixed = TRUE)) == TRUE)
  )
  {
    pt_subscr_group_counter_regional_ticket <- 1 + pt_subscr_group_counter_regional_ticket
  }  
  
  if (
    ((grepl("5", d_noSL1$`Q16_PT-subscr`[i], fixed = TRUE)) == TRUE)
  )
  {
    pt_subscr_group_counter_half_point_to_point_travel_card <- 1 + pt_subscr_group_counter_half_point_to_point_travel_card
  }  
  
  if (
    ((grepl("6", d_noSL1$`Q16_PT-subscr`[i], fixed = TRUE)) == TRUE)
  )
  {
    pt_subscr_group_counter_general_subscription <- 1 + pt_subscr_group_counter_general_subscription
  }  
  
  if (
    ((grepl("7", d_noSL1$`Q16_PT-subscr`[i], fixed = TRUE)) == TRUE)
  )
  {
    pt_subscr_group_counter_other_subscription <- 1 + pt_subscr_group_counter_other_subscription
  }  
  
  if (
    ((grepl("0", d_noSL1$`Q16_PT-subscr`[i], fixed = TRUE)) == TRUE)
  )
  {
    pt_subscr_group_counter_none <- 1 + pt_subscr_group_counter_none
  }  
  
  if (
    ((grepl("-1", d_noSL1$`Q16_PT-subscr`[i], fixed = TRUE)) == TRUE)
  )
  {
    pt_subscr_group_counter_dont_know <- 1 + pt_subscr_group_counter_dont_know
  }  
  
}

# writing counts for each group into dataset
d_pt_subscr$Survey[1:10] <- c(
  pt_subscr_group_counter_half_fare,
  pt_subscr_group_counter_track_seven,
  pt_subscr_group_counter_seven_25,
  pt_subscr_group_counter_city_ticket,
  pt_subscr_group_counter_regional_ticket,
  pt_subscr_group_counter_half_point_to_point_travel_card,
  pt_subscr_group_counter_general_subscription,
  pt_subscr_group_counter_other_subscription,
  pt_subscr_group_counter_none,
  pt_subscr_group_counter_dont_know
)

# Percentage of total calculation
d_pt_subscr <- mutate(d_pt_subscr, "Percentage of Survey" = d_pt_subscr$Survey / sum(d_pt_subscr$Survey))

# save output as csv file
write.csv(d_pt_subscr, file = "output/d_pt_subscr.csv", row.names = FALSE)

# variable cleanup
rm(pt_subscr_group_ID,
   pt_subscr_group_ranges,
   pt_subscr_group_counter_half_fare,
   pt_subscr_group_counter_track_seven,
   pt_subscr_group_counter_seven_25,
   pt_subscr_group_counter_city_ticket,
   pt_subscr_group_counter_regional_ticket,
   pt_subscr_group_counter_half_point_to_point_travel_card,
   pt_subscr_group_counter_general_subscription,
   pt_subscr_group_counter_other_subscription,
   pt_subscr_group_counter_none,
   pt_subscr_group_counter_dont_know
)
