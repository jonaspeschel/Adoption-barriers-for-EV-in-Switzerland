# 5) EV driving experience
##########################################

# EV experience categories are defined below. Behind each category there is the Qualtrics coding value
# Electric car	1
# Hybrid car: Pure hybrid	2
# Hybrid car: Plug-in hybrid	3
# Hybrid car: Range Extender vehicle	4
# Electric motorcycle	5
# Electric bicycle	6
# Electric scooter	7
# Other	8
# None	0
# Don't know	-1


# setup of data frame
# each column has the count of occurences in the respective group
EV_experience_group_ID <- 1:10
EV_experience_group_ranges <- c("Electric car", 
                                "Hybrid car: Pure hybrid",
                                "Hybrid car: Plug-in hybrid",
                                "Hybrid car: Range Extender vehicle",
                                "Electric motorcycle",
                                "Electric bicycle",
                                "Electric scooter",
                                "Other",
                                "None",
                                "Don't know"

)
d_EV_experience = tibble(        "EV experience group ID" = EV_experience_group_ID, 
                          "EV experience Groups" = EV_experience_group_ranges, 
                          "Survey" = NA, 
)

# initializing counters for each item
EV_experience_group_counter_electric_car <- as.integer(0) # coded 1
EV_experience_group_counter_hybrid_pure <- as.integer(0) # coded 2
EV_experience_group_counter_hybrid_plug_in <- as.integer(0) # coded 3
EV_experience_group_counter_hybrid_range_extender <- as.integer(0) # coded 4
EV_experience_group_counter_electric_motorcycle <- as.integer(0) # coded 5
EV_experience_group_counter_electric_bicycle <- as.integer(0) # coded 6
EV_experience_group_counter_electric_scooter <- as.integer(0) # coded 7
EV_experience_group_counter_other <- as.integer(0) # coded 8
EV_experience_group_counter_none <- as.integer(0) # coded 0
EV_experience_group_counter_dont_know <- as.integer(0) # coded -1


# counting occurences for each group
for (i in 1:n_no_soft_launch_1){
  if (
    ((grepl("1", d_noSL1$`Q12_EV-experience`[i], fixed = TRUE)) == TRUE) &
    ((grepl("-1", d_noSL1$`Q12_EV-experience`[i], fixed = TRUE)) == FALSE)
  )
       {
    EV_experience_group_counter_electric_car <- 1 + EV_experience_group_counter_electric_car
  }
  
  if (
    ((grepl("2", d_noSL1$`Q12_EV-experience`[i], fixed = TRUE)) == TRUE)
  )
  {
    EV_experience_group_counter_hybrid_pure <- 1 + EV_experience_group_counter_hybrid_pure
  }
  
  if (
    ((grepl("3", d_noSL1$`Q12_EV-experience`[i], fixed = TRUE)) == TRUE)
  )
  {
    EV_experience_group_counter_hybrid_plug_in <- 1 + EV_experience_group_counter_hybrid_plug_in
  }
  
  if (
    ((grepl("4", d_noSL1$`Q12_EV-experience`[i], fixed = TRUE)) == TRUE)
  )
  {
    EV_experience_group_counter_hybrid_range_extender <- 1 + EV_experience_group_counter_hybrid_range_extender
  }
  
  if (
    ((grepl("5", d_noSL1$`Q12_EV-experience`[i], fixed = TRUE)) == TRUE)
  )
  {
    EV_experience_group_counter_electric_motorcycle <- 1 + EV_experience_group_counter_electric_motorcycle
  }
  
  if (
    ((grepl("6", d_noSL1$`Q12_EV-experience`[i], fixed = TRUE)) == TRUE)
  )
  {
    EV_experience_group_counter_electric_bicycle <- 1 + EV_experience_group_counter_electric_bicycle
  }
  
  if (
    ((grepl("7", d_noSL1$`Q12_EV-experience`[i], fixed = TRUE)) == TRUE)
  )
  {
    EV_experience_group_counter_electric_scooter <- 1 + EV_experience_group_counter_electric_scooter
  }
  
  if (
    ((grepl("8", d_noSL1$`Q12_EV-experience`[i], fixed = TRUE)) == TRUE)
  )
  {
    EV_experience_group_counter_other <- 1 + EV_experience_group_counter_other
  }
  
  if (
    ((grepl("0", d_noSL1$`Q12_EV-experience`[i], fixed = TRUE)) == TRUE)
  )
  {
    EV_experience_group_counter_none <- 1 + EV_experience_group_counter_none
  }
  
  if (
    ((grepl("-1", d_noSL1$`Q12_EV-experience`[i], fixed = TRUE)) == TRUE)
  )
  {
    EV_experience_group_counter_dont_know <- 1 + EV_experience_group_counter_dont_know
  }
}

# writing counts for each group into dataset
d_EV_experience$Survey[1:10] <- c(EV_experience_group_counter_electric_car,
                           EV_experience_group_counter_hybrid_pure,
                           EV_experience_group_counter_hybrid_plug_in,
                           EV_experience_group_counter_hybrid_range_extender,
                           EV_experience_group_counter_electric_motorcycle,
                           EV_experience_group_counter_electric_bicycle,
                           EV_experience_group_counter_electric_scooter,
                           EV_experience_group_counter_other,
                           EV_experience_group_counter_none,
                           EV_experience_group_counter_dont_know
)


# Percentage of total calculation
d_EV_experience <- mutate(d_EV_experience, "Percentage of Survey" = d_EV_experience$Survey / sum(d_EV_experience$Survey))

# save output as csv file
write.csv(d_EV_experience, file = "output/d_EV_experience.csv", row.names = FALSE)

# variable cleanup
rm(EV_experience_group_ID,
   EV_experience_group_ranges,
   EV_experience_group_counter_electric_car,
   EV_experience_group_counter_hybrid_pure,
   EV_experience_group_counter_hybrid_plug_in,
   EV_experience_group_counter_hybrid_range_extender,
   EV_experience_group_counter_electric_motorcycle,
   EV_experience_group_counter_electric_bicycle,
   EV_experience_group_counter_electric_scooter,
   EV_experience_group_counter_other,
   EV_experience_group_counter_none,
   EV_experience_group_counter_dont_know
)