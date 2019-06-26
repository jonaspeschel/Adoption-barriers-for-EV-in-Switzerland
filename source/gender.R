# 1) gender
##########################################

# gender groups are defined as male, female and 'other'
#' group 1: male
#' group 2: female
#' group 3: other

# setup of data frame
# each column has the count of occurences in the respective age group
gender_group_ID <- 1:3
gender_group_ranges <- c("Male", 
                         "Female", 
                         "Other"
)
d_gender = tibble(        "Gender group ID" = gender_group_ID, 
                          "Gender Groups" = gender_group_ranges, 
                          "Survey" = NA, 
                          "2015 Mobility Census" = NA
)

# initializing groups
gender_group_counter_male <- as.integer(0) # initializes counter for male. Qualtrics coding: 1
gender_group_counter_female <- as.integer(0) # initializes counter for female. Qualtrics coding: 0
gender_group_counter_other <- as.integer(0) # initializes counter for other. Qualtrics coding: 2

# counting occurences for each group
for (i in 1:n_no_soft_launch_1){
  if (d_noSL1$Q4_gender[i] == 1){
    gender_group_counter_male <- 1 + gender_group_counter_male
  }
  if (d_noSL1$Q4_gender[i] == 0){
    gender_group_counter_female <- 1 + gender_group_counter_female
  }
  if (d_noSL1$Q4_gender[i] == 2){
    gender_group_counter_other <- 1 + gender_group_counter_other
  }
}

# writing counts for each group into dataset
d_gender$Survey[1:3] <- c(gender_group_counter_male,
                          gender_group_counter_female,
                          gender_group_counter_other
)

# writing counts from 2015 mobility census for each group into the dataset
d_gender$`2015 Mobility Census`[1:3] <- c(27943,
                                          29147,
                                          0
) # data from 2015 mobility census.

# Percentage of total calculation
d_gender <- mutate(d_gender, "Percentage of Survey" = d_gender$Survey / sum(d_gender$Survey))
d_gender <- mutate(d_gender, "Percentage of 2015 Mobility Census" = d_gender$`2015 Mobility Census` / sum(d_gender$`2015 Mobility Census`))

# save output as csv file
write.csv(d_gender, file = "output/d_gender.csv", row.names = FALSE)

# variable cleanup
rm(gender_group_ID,
   gender_group_ranges,
   gender_group_counter_male,
   gender_group_counter_female,
   gender_group_counter_other
)
