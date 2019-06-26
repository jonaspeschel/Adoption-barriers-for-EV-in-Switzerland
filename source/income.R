# 4) income
##########################################

# income groups are defined as follows:
#' group 1: Below 4'000
#' group 2: 4'000 - 8'000
#' group 3: 8'000 - 12'000
#' group 4: Above 12'000
#' group 5: Don't know/no comment

# setup of data frame
# each column has the count of occurences in the respective group
income_group_ID <- 1:5
income_group_ranges <- c("Below 4'000", 
                         "4'000 - 8'000", 
                         "8'000 - 12'000",
                         "Above 12'000",
                         "Don't know/no comment"
)
d_income = tibble(        "Income group ID" = income_group_ID, 
                          "Income Groups" = income_group_ranges, 
                          "Survey" = NA, 
                          "2015 Mobility Census" = NA
)

# initializing groups
income_group_counter_below_4000 <- as.integer(0) # initializes counter for category "below 4000".  Qualtrics codings: 1, 2
income_group_counter_4000_to_8000 <- as.integer(0) # initializes counter for category "4000-8000".  Qualtrics codings: 3, 4
income_group_counter_8000_to_12000 <- as.integer(0) # initializes counter for category "8000-12000".  Qualtrics codings: 5, 6
income_group_counter_above_12000 <- as.integer(0) # initializes counter for category "above 12000".  Qualtrics codings: 7, 8, 9
income_group_counter_dont_know <- as.integer(0) # initializes counter for category "dont know/no comment".  Qualtrics codings: -1, -2

# counting occurences for each group
for (i in 1:n_no_soft_launch_1){
  if ((d_noSL1$`Q8_household-income`[i] == 1) |
      (d_noSL1$`Q8_household-income`[i] == 2)
  )
  {
    income_group_counter_below_4000 <- 1 + income_group_counter_below_4000
  }
  
  if ((d_noSL1$`Q8_household-income`[i] == 3) |
      (d_noSL1$`Q8_household-income`[i] == 4)
  )
  {
    income_group_counter_4000_to_8000 <- 1 + income_group_counter_4000_to_8000
  }
  
  if ((d_noSL1$`Q8_household-income`[i] == 5) |
      (d_noSL1$`Q8_household-income`[i] == 6)
  )
  {
    income_group_counter_8000_to_12000 <- 1 + income_group_counter_8000_to_12000
  }
  
  if ((d_noSL1$`Q8_household-income`[i] == 7) |
      (d_noSL1$`Q8_household-income`[i] == 8) |
      (d_noSL1$`Q8_household-income`[i] == 9)
  )
  {
    income_group_counter_above_12000 <- 1 + income_group_counter_above_12000
  }
  
  if ((d_noSL1$`Q8_household-income`[i] == -1) |
      (d_noSL1$`Q8_household-income`[i] == -2)
  )
  {
    income_group_counter_dont_know <- 1 + income_group_counter_dont_know
  }
}

# writing counts for each group into dataset
d_income$Survey[1:5] <- c(income_group_counter_below_4000,
                          income_group_counter_4000_to_8000,
                          income_group_counter_8000_to_12000,
                          income_group_counter_above_12000,
                          income_group_counter_dont_know
)

# writing counts from 2015 mobility census for each group into the dataset
d_income$`2015 Mobility Census`[1:5] <- c(6406,
                                          15915,
                                          10579,
                                          7624,
                                          16566
) # data from 2015 mobility census.

# Percentage of total calculation
d_income <- mutate(d_income, "Percentage of Survey" = d_income$Survey / sum(d_income$Survey))
d_income <- mutate(d_income, "Percentage of 2015 Mobility Census" = d_income$`2015 Mobility Census` / sum(d_income$`2015 Mobility Census`))

# save output as csv file
write.csv(d_income, file = "output/d_income.csv", row.names = FALSE)

# variable cleanup
rm(income_group_ID,
   income_group_ranges,
   income_group_counter_below_4000,
   income_group_counter_4000_to_8000,
   income_group_counter_8000_to_12000,
   income_group_counter_above_12000,
   income_group_counter_dont_know
)
