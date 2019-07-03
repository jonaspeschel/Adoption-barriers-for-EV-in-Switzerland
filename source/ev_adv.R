# Q40 EV advantages
##########################################

# EV advantages categories are defined below. Behind each category there is the Qualtrics coding value
# Environmental impact (1)
# Little noise (2)
# Improved air quality (3)
# Low CO2 emissions (4)
# Pleasant driving experience (5)
# Savings in operating costs (6)
# Savings in total cost of ownership (7)
# Other (8)


# setup of data frame
# each column has the count of occurences in the respective group
EV_adv_group_ID <- 1:8
EV_adv_group_ranges <- c(
  "Environmental impact",
  "Little noise",
  "Improved air quality",
  "Low CO2 emissions",
  "Pleasant driving experience",
  "Savings in operating costs",
  "Savings in total cost of ownership",
  "Other"
)

d_EV_adv = tibble(
  "EV advantages group ID" = EV_adv_group_ID, 
  "EV advantages groups" = EV_adv_group_ranges, 
  "Survey" = NA, 
)

# initializing counters for each item
EV_adv_group_counter_environmental_impact <- as.integer(0)
EV_adv_group_counter__noise <- as.integer(0)
EV_adv_group_counter_air_quality <- as.integer(0)
EV_adv_group_counter_co2_emissions <- as.integer(0)
EV_adv_group_counter_driving_experience <- as.integer(0)
EV_adv_group_counter_operating_costs <- as.integer(0)
EV_adv_group_counter_total_cost_of_ownership <- as.integer(0)
EV_adv_group_counter_other <- as.integer(0)

# counting occurences for each group
for (i in 1:n_no_soft_launch_1){
  if (
    ((grepl("1", d_noSL1$`Q40_EV-adv`[i], fixed = TRUE)) == TRUE)
  )
  {
    EV_adv_group_counter_environmental_impact <- 1 + EV_adv_group_counter_environmental_impact
  }

  if (
    ((grepl("2", d_noSL1$`Q40_EV-adv`[i], fixed = TRUE)) == TRUE)
  )
  {
    EV_adv_group_counter__noise <- 1 + EV_adv_group_counter__noise
  }
  
  if (
    ((grepl("3", d_noSL1$`Q40_EV-adv`[i], fixed = TRUE)) == TRUE)
  )
  {
    EV_adv_group_counter_air_quality <- 1 + EV_adv_group_counter_air_quality
  }
  
  if (
    ((grepl("4", d_noSL1$`Q40_EV-adv`[i], fixed = TRUE)) == TRUE)
  )
  {
    EV_adv_group_counter_co2_emissions <- 1 + EV_adv_group_counter_co2_emissions
  }
  
  if (
    ((grepl("5", d_noSL1$`Q40_EV-adv`[i], fixed = TRUE)) == TRUE)
  )
  {
    EV_adv_group_counter_driving_experience <- 1 + EV_adv_group_counter_driving_experience
  }
  
  if (
    ((grepl("6", d_noSL1$`Q40_EV-adv`[i], fixed = TRUE)) == TRUE)
  )
  {
    EV_adv_group_counter_operating_costs <- 1 + EV_adv_group_counter_operating_costs
  }
  
  if (
    ((grepl("7", d_noSL1$`Q40_EV-adv`[i], fixed = TRUE)) == TRUE)
  )
  {
    EV_adv_group_counter_total_cost_of_ownership <- 1 + EV_adv_group_counter_total_cost_of_ownership
  }
  
  if (
    ((grepl("8", d_noSL1$`Q40_EV-adv`[i], fixed = TRUE)) == TRUE)
  )
  {
    EV_adv_group_counter_other <- 1 + EV_adv_group_counter_other
  }
  
}

# writing counts for each group into dataset
d_EV_adv$Survey[1:8] <- c(
  EV_adv_group_counter_environmental_impact,
  EV_adv_group_counter__noise,
  EV_adv_group_counter_air_quality,
  EV_adv_group_counter_co2_emissions,
  EV_adv_group_counter_driving_experience,
  EV_adv_group_counter_operating_costs,
  EV_adv_group_counter_total_cost_of_ownership,
  EV_adv_group_counter_other
)


# Percentage of total calculation
d_EV_adv <- mutate(d_EV_adv, "Percentage of Survey" = d_EV_adv$Survey / sum(d_EV_adv$Survey))

# save output as csv file
write.csv(d_EV_adv, file = "output/d_EV_adv.csv", row.names = FALSE)

# variable cleanup
rm(EV_adv_group_ID,
   EV_adv_group_ranges,
   EV_adv_group_counter_environmental_impact,
   EV_adv_group_counter__noise,
   EV_adv_group_counter_air_quality,
   EV_adv_group_counter_co2_emissions,
   EV_adv_group_counter_driving_experience,
   EV_adv_group_counter_operating_costs,
   EV_adv_group_counter_total_cost_of_ownership,
   EV_adv_group_counter_other
)

