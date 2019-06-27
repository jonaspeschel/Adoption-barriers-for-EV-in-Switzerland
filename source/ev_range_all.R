# 10) # EV battery range for all ranges
##########################################

# EV battery range for all distances categories are defined below. Behind each category there is the Qualtrics coding value
# 50 km	1
# 100 km	2
# 150 km	3
# 200 km	4
# 250 km	5
# 300 km	6
# 350 km	7
# 400 km	8
# 450 km	9
# 500 km	10
# More than 500 km	11
# I do not know	-1


# setup of data frame
# each column has the count of occurences in the respective group
ev_range_all_group_ID <- 1:12
ev_range_all_group_ranges <- c(
  "50 km",
  "100 km",
  "150 km",
  "200 km",
  "250 km",
  "300 km",
  "350 km",
  "400 km",
  "450 km",
  "500 km",
  "More than 500 km",
  "I do not know"
)

# Setup tibble structure for data storage
d_ev_range_all = tibble(
  "PT subscription group ID" = ev_range_all_group_ID, 
  "PT subscription Groups" = ev_range_all_group_ranges, 
  "Survey" = NA
)

# initializing counters for each item
ev_range_all_group_counter_50km <- as.integer(0) # coded 1
ev_range_all_group_counter_100km <- as.integer(0) # coded 2
ev_range_all_group_counter_150km <- as.integer(0) # coded 3
ev_range_all_group_counter_200km <- as.integer(0) # coded 4
ev_range_all_group_counter_250km <- as.integer(0) # coded 5
ev_range_all_group_counter_300km <- as.integer(0) # coded 6
ev_range_all_group_counter_350km <- as.integer(0) # coded 7
ev_range_all_group_counter_400km <- as.integer(0) # coded 8
ev_range_all_group_counter_450km <- as.integer(0) # coded 9
ev_range_all_group_counter_500km <- as.integer(0) # coded 10
ev_range_all_group_counter_more_than_500 <- as.integer(0) # coded 11
ev_range_all_group_counter_dont_know <- as.integer(0) # coded -1

# counting occurences for each group
for (i in 1:n_no_soft_launch_1){
  if (
    ((grepl("1", d_noSL1$`Q25_EV-range-all`[i], fixed = TRUE)) == TRUE) &
    ((grepl("-1", d_noSL1$`Q25_EV-range-all`[i], fixed = TRUE)) == FALSE) &
    ((grepl("10", d_noSL1$`Q25_EV-range-all`[i], fixed = TRUE)) == FALSE) &
    ((grepl("11", d_noSL1$`Q25_EV-range-all`[i], fixed = TRUE)) == FALSE)
  )
  {
    ev_range_all_group_counter_50km <- 1 + ev_range_all_group_counter_50km
  }
  
  if (
    ((grepl("2", d_noSL1$`Q25_EV-range-all`[i], fixed = TRUE)) == TRUE)
  )
  {
    ev_range_all_group_counter_100km <- 1 + ev_range_all_group_counter_100km
  }
  
  if (
    ((grepl("3", d_noSL1$`Q25_EV-range-all`[i], fixed = TRUE)) == TRUE)
  )
  {
    ev_range_all_group_counter_150km <- 1 + ev_range_all_group_counter_150km
  }
  
  if (
    ((grepl("4", d_noSL1$`Q25_EV-range-all`[i], fixed = TRUE)) == TRUE)
  )
  {
    ev_range_all_group_counter_200km <- 1 + ev_range_all_group_counter_200km
  }
  
  if (
    ((grepl("5", d_noSL1$`Q25_EV-range-all`[i], fixed = TRUE)) == TRUE)
  )
  {
    ev_range_all_group_counter_250km <- 1 + ev_range_all_group_counter_250km
  }
  
  if (
    ((grepl("6", d_noSL1$`Q25_EV-range-all`[i], fixed = TRUE)) == TRUE)
  )
  {
    ev_range_all_group_counter_300km <- 1 + ev_range_all_group_counter_300km
  }
  
  if (
    ((grepl("7", d_noSL1$`Q25_EV-range-all`[i], fixed = TRUE)) == TRUE)
  )
  {
    ev_range_all_group_counter_350km <- 1 + ev_range_all_group_counter_350km
  }
  
  if (
    ((grepl("8", d_noSL1$`Q25_EV-range-all`[i], fixed = TRUE)) == TRUE)
  )
  {
    ev_range_all_group_counter_400km <- 1 + ev_range_all_group_counter_400km
  }
  
  if (
    ((grepl("9", d_noSL1$`Q25_EV-range-all`[i], fixed = TRUE)) == TRUE)
  )
  {
    ev_range_all_group_counter_450km <- 1 + ev_range_all_group_counter_450km
  }
  
  if (
    ((grepl("10", d_noSL1$`Q25_EV-range-all`[i], fixed = TRUE)) == TRUE)
  )
  {
    ev_range_all_group_counter_500km <- 1 + ev_range_all_group_counter_500km
  }
  
  if (
    ((grepl("11", d_noSL1$`Q25_EV-range-all`[i], fixed = TRUE)) == TRUE)
  )
  {
    ev_range_all_group_counter_more_than_500 <- 1 + ev_range_all_group_counter_more_than_500
  }
  
  if (
    ((grepl("-1", d_noSL1$`Q25_EV-range-all`[i], fixed = TRUE)) == TRUE)
  )
  {
    ev_range_all_group_counter_dont_know <- 1 + ev_range_all_group_counter_dont_know
  }
  
}

# writing counts for each group into dataset
d_ev_range_all$Survey[1:12] <- c(
  ev_range_all_group_counter_50km,
  ev_range_all_group_counter_100km,
  ev_range_all_group_counter_150km,
  ev_range_all_group_counter_200km,
  ev_range_all_group_counter_250km,
  ev_range_all_group_counter_300km,
  ev_range_all_group_counter_350km,
  ev_range_all_group_counter_400km,
  ev_range_all_group_counter_450km,
  ev_range_all_group_counter_500km,
  ev_range_all_group_counter_more_than_500,
  ev_range_all_group_counter_dont_know
)

# Percentage of total calculation
d_ev_range_all <- mutate(d_ev_range_all, "Percentage of Survey" = d_ev_range_all$Survey / sum(d_ev_range_all$Survey))

# save output as csv file
write.csv(d_ev_range_all, file = "output/d_ev_range_all.csv", row.names = FALSE)

# variable cleanup
rm(ev_range_all_group_ID,
   ev_range_all_group_ranges,
   ev_range_all_group_counter_50km,
   ev_range_all_group_counter_100km,
   ev_range_all_group_counter_150km,
   ev_range_all_group_counter_200km,
   ev_range_all_group_counter_250km,
   ev_range_all_group_counter_300km,
   ev_range_all_group_counter_350km,
   ev_range_all_group_counter_400km,
   ev_range_all_group_counter_450km,
   ev_range_all_group_counter_500km,
   ev_range_all_group_counter_more_than_500,
   ev_range_all_group_counter_dont_know
)

