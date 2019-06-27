# 7) mobility usage
##########################################

# mobility usage categories are defined below. Behind each category there is the Qualtrics coding value
# Leasing a car  	1
# Renting a car (eg Avis, Europcar, Sixt)  	2
# Car sharing (eg Mobility, Sharoo)  	3
# Taxi (eg regular taxi, Mytaxi, Uber, Lyft)	4
# Car Mobility Subscription (eg Carvolution, Juicar, Upto)  	5
# Combined Mobility Subscription (eg SBB Green Class)  	6
# Bike sharing (eg, Publibike, Sharoo)  	7
# Renting a bike  	8
# Other	9
# None	0
# I do not know	-1


# setup of data frame
# each column has the count of occurences in the respective group
mobility_usage_group_ID <- 1:11
mobility_usage_group_ranges <- c(
  "Leasing a car",
  "Renting a car (eg Avis, Europcar, Sixt)",
  "Car sharing (eg Mobility, Sharoo)",
  "Taxi (eg regular taxi, Mytaxi, Uber, Lyft)",
  "Car Mobility Subscription (eg Carvolution, Juicar, Upto)",
  "Combined Mobility Subscription (eg SBB Green Class)",
  "Bike sharing (eg, Publibike, Sharoo)",
  "Renting a bike",
  "Other",
  "None",
  "I do not know"
)

d_mobility_usage = tibble(        "Mobility usage group ID" = mobility_usage_group_ID, 
                          "Mobility usage Groups" = mobility_usage_group_ranges, 
                          "Survey" = NA
)

# initializing counters for each item
mobility_usage_group_counter_leasing <- as.integer(0) # coded 1
mobility_usage_group_counter_renting_a_car <- as.integer(0) # coded 2
mobility_usage_group_counter_car_sharing <- as.integer(0) # coded 3
mobility_usage_group_counter_taxi <- as.integer(0) # coded 4
mobility_usage_group_counter_car_mobility_subscription <- as.integer(0) # coded 5
mobility_usage_group_counter_combined_mobility_subscription <- as.integer(0) # coded 6
mobility_usage_group_counter_bike_sharing <- as.integer(0) # coded 7
mobility_usage_group_counter_renting_a_bike <- as.integer(0) # coded 8
mobility_usage_group_counter_other <- as.integer(0) # coded 9
mobility_usage_group_counter_none <- as.integer(0) # coded 0
mobility_usage_group_counter_dont_know <- as.integer(0) # coded -1

# counting occurences for each group
for (i in 1:n_no_soft_launch_1){
  if (
    ((grepl("1", d_noSL1$`Q15_mobility-usage`[i], fixed = TRUE)) == TRUE) &
    ((grepl("-1", d_noSL1$`Q15_mobility-usage`[i], fixed = TRUE)) == FALSE)
  )
  {
    mobility_usage_group_counter_leasing <- 1 + mobility_usage_group_counter_leasing
  }
  
  if (
    ((grepl("2", d_noSL1$`Q15_mobility-usage`[i], fixed = TRUE)) == TRUE)
  )
  {
    mobility_usage_group_counter_renting_a_car <- 1 + mobility_usage_group_counter_renting_a_car
  }

  if (
    ((grepl("3", d_noSL1$`Q15_mobility-usage`[i], fixed = TRUE)) == TRUE)
  )
  {
    mobility_usage_group_counter_car_sharing <- 1 + mobility_usage_group_counter_car_sharing
  }  
  
  if (
    ((grepl("4", d_noSL1$`Q15_mobility-usage`[i], fixed = TRUE)) == TRUE)
  )
  {
    mobility_usage_group_counter_taxi <- 1 + mobility_usage_group_counter_taxi
  }  
  
  if (
    ((grepl("5", d_noSL1$`Q15_mobility-usage`[i], fixed = TRUE)) == TRUE)
  )
  {
    mobility_usage_group_counter_car_mobility_subscription <- 1 + mobility_usage_group_counter_car_mobility_subscription
  }  
  
  if (
    ((grepl("6", d_noSL1$`Q15_mobility-usage`[i], fixed = TRUE)) == TRUE)
  )
  {
    mobility_usage_group_counter_combined_mobility_subscription <- 1 + mobility_usage_group_counter_combined_mobility_subscription
  }  
  
  if (
    ((grepl("7", d_noSL1$`Q15_mobility-usage`[i], fixed = TRUE)) == TRUE)
  )
  {
    mobility_usage_group_counter_bike_sharing <- 1 + mobility_usage_group_counter_bike_sharing
  }  
  
  if (
    ((grepl("8", d_noSL1$`Q15_mobility-usage`[i], fixed = TRUE)) == TRUE)
  )
  {
    mobility_usage_group_counter_renting_a_bike <- 1 + mobility_usage_group_counter_renting_a_bike
  }  
  
  if (
    ((grepl("9", d_noSL1$`Q15_mobility-usage`[i], fixed = TRUE)) == TRUE)
  )
  {
    mobility_usage_group_counter_other <- 1 + mobility_usage_group_counter_other
  }  
  
  if (
    ((grepl("0", d_noSL1$`Q15_mobility-usage`[i], fixed = TRUE)) == TRUE)
  )
  {
    mobility_usage_group_counter_none <- 1 + mobility_usage_group_counter_none
  }  
  
  if (
    ((grepl("-1", d_noSL1$`Q15_mobility-usage`[i], fixed = TRUE)) == TRUE)
  )
  {
    mobility_usage_group_counter_dont_know <- 1 + mobility_usage_group_counter_dont_know
  }  
  
}

# writing counts for each group into dataset
d_mobility_usage$Survey[1:11] <- c(
  mobility_usage_group_counter_leasing,
  mobility_usage_group_counter_renting_a_car,
  mobility_usage_group_counter_car_sharing,
  mobility_usage_group_counter_taxi,
  mobility_usage_group_counter_car_mobility_subscription,
  mobility_usage_group_counter_combined_mobility_subscription,
  mobility_usage_group_counter_bike_sharing,
  mobility_usage_group_counter_renting_a_bike,
  mobility_usage_group_counter_other,
  mobility_usage_group_counter_none,
  mobility_usage_group_counter_dont_know
)

# Percentage of total calculation
d_mobility_usage <- mutate(d_mobility_usage, "Percentage of Survey" = d_mobility_usage$Survey / sum(d_mobility_usage$Survey))

# save output as csv file
write.csv(d_mobility_usage, file = "output/d_mobility_usage.csv", row.names = FALSE)

# variable cleanup
rm(mobility_usage_group_ID,
   mobility_usage_group_ranges,
   mobility_usage_group_counter_leasing,
   mobility_usage_group_counter_renting_a_car,
   mobility_usage_group_counter_car_sharing,
   mobility_usage_group_counter_taxi,
   mobility_usage_group_counter_car_mobility_subscription,
   mobility_usage_group_counter_combined_mobility_subscription,
   mobility_usage_group_counter_bike_sharing,
   mobility_usage_group_counter_renting_a_bike,
   mobility_usage_group_counter_other,
   mobility_usage_group_counter_none,
   mobility_usage_group_counter_dont_know
)
