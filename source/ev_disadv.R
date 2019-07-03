# Q41 EV disadvantages
##########################################

# EV disadvantages categories are defined below. Behind each category there is the Qualtrics coding value
# Battery range (1)
# Charging time (2)
# Charging infrastructure: public charging infrastructure (3)
# Charging infrastructure: at home (4)
# Charging infrastructure: at work (5)
# High purchasing price of the vehicle (6)
# Lack of information about electric vehicles (7)
# Limited choice of vehicle models (8)
# Other (9) 


# setup of data frame
# each column has the count of occurences in the respective group
EV_disadv_group_ID <- 1:9
EV_disadv_group_ranges <- c(
  "Battery range",
  "Charging time",
  "Charging infrastructure: public charging infrastructure",
  "Charging infrastructure: at home",
  "Charging infrastructure: at work",
  "High purchasing price of the vehicle",
  "Lack of information about electric vehicles",
  "Limited choice of vehicle models",
  "Other"
)

d_EV_disadv = tibble(
  "EV disadvantages group ID" = EV_disadv_group_ID, 
  "EV disadvantages groups" = EV_disadv_group_ranges, 
  "Survey" = NA, 
)

# initializing counters for each item
EV_disadv_group_counter_battery_range <- as.integer(0)
EV_disadv_group_counter_charging_time <- as.integer(0)
EV_disadv_group_counter_public_charging_infrastructure <- as.integer(0)
EV_disadv_group_counter_home_charging_infrastructure <- as.integer(0)
EV_disadv_group_counter_work_charging_infrastructure <- as.integer(0)
EV_disadv_group_counter_purchasing_price <- as.integer(0)
EV_disadv_group_counter_information_lacking <- as.integer(0)
EV_disadv_group_counter_vehicle_choices <- as.integer(0)
EV_disadv_group_counter_other <- as.integer(0)

# counting occurences for each group
for (i in 1:n_no_soft_launch_1){
  if (
    ((grepl("1", d_noSL1$`Q41_EV-disadv`[i], fixed = TRUE)) == TRUE)
  )
  {
    EV_disadv_group_counter_battery_range <- 1 + EV_disadv_group_counter_battery_range
  }
  
  if (
    ((grepl("2", d_noSL1$`Q41_EV-disadv`[i], fixed = TRUE)) == TRUE)
  )
  {
    EV_disadv_group_counter_charging_time <- 1 + EV_disadv_group_counter_charging_time
  }
  
  if (
    ((grepl("3", d_noSL1$`Q41_EV-disadv`[i], fixed = TRUE)) == TRUE)
  )
  {
    EV_disadv_group_counter_public_charging_infrastructure <- 1 + EV_disadv_group_counter_public_charging_infrastructure
  }
  
  if (
    ((grepl("4", d_noSL1$`Q41_EV-disadv`[i], fixed = TRUE)) == TRUE)
  )
  {
    EV_disadv_group_counter_home_charging_infrastructure <- 1 + EV_disadv_group_counter_home_charging_infrastructure
  }
  
  if (
    ((grepl("5", d_noSL1$`Q41_EV-disadv`[i], fixed = TRUE)) == TRUE)
  )
  {
    EV_disadv_group_counter_work_charging_infrastructure <- 1 + EV_disadv_group_counter_work_charging_infrastructure
  }
  
  if (
    ((grepl("6", d_noSL1$`Q41_EV-disadv`[i], fixed = TRUE)) == TRUE)
  )
  {
    EV_disadv_group_counter_purchasing_price <- 1 + EV_disadv_group_counter_purchasing_price
  }
  
  if (
    ((grepl("7", d_noSL1$`Q41_EV-disadv`[i], fixed = TRUE)) == TRUE)
  )
  {
    EV_disadv_group_counter_information_lacking <- 1 + EV_disadv_group_counter_information_lacking
  }
  
  if (
    ((grepl("8", d_noSL1$`Q41_EV-disadv`[i], fixed = TRUE)) == TRUE)
  )
  {
    EV_disadv_group_counter_vehicle_choices <- 1 + EV_disadv_group_counter_vehicle_choices
  }
  
  if (
    ((grepl("9", d_noSL1$`Q41_EV-disadv`[i], fixed = TRUE)) == TRUE)
  )
  {
    EV_disadv_group_counter_other <- 1 + EV_disadv_group_counter_other
  }
  
}

# writing counts for each group into dataset
d_EV_disadv$Survey[1:9] <- c(
  EV_disadv_group_counter_battery_range,
  EV_disadv_group_counter_charging_time,
  EV_disadv_group_counter_public_charging_infrastructure,
  EV_disadv_group_counter_home_charging_infrastructure,
  EV_disadv_group_counter_work_charging_infrastructure,
  EV_disadv_group_counter_purchasing_price,
  EV_disadv_group_counter_information_lacking,
  EV_disadv_group_counter_vehicle_choices,
  EV_disadv_group_counter_other
)


# Percentage of total calculation
d_EV_disadv <- mutate(d_EV_disadv, "Percentage of Survey" = d_EV_disadv$Survey / sum(d_EV_disadv$Survey))

# save output as csv file
write.csv(d_EV_disadv, file = "output/d_EV_disadv.csv", row.names = FALSE)

# variable cleanup
rm(EV_disadv_group_ID,
   EV_disadv_group_ranges,
   EV_disadv_group_counter_battery_range,
   EV_disadv_group_counter_charging_time,
   EV_disadv_group_counter_public_charging_infrastructure,
   EV_disadv_group_counter_home_charging_infrastructure,
   EV_disadv_group_counter_work_charging_infrastructure,
   EV_disadv_group_counter_purchasing_price,
   EV_disadv_group_counter_information_lacking,
   EV_disadv_group_counter_vehicle_choices,
   EV_disadv_group_counter_other
)

