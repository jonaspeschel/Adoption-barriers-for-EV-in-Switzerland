# Survey remark
##########################################

# Survey remark are collected for all questions where a comment field was available
# Data is evaluated based on all responses, including soft launches 1 and 2


# setup of data frame
# each column has the count of occurences in the respective group
remark_ID <- 1:343

d_remark = tibble(
  "Remark ID" = remark_ID, 
  "Q12 EV experience remarks" = NA,
  "Q14 EV use remarks" = NA,
  "Q15 mobility usage remarks" = NA,
  "Q16 PT subscription remarks" = NA,
  "Q40 EV advantages remarks" = NA,
  "Q41 EV disadvantages remarks" = NA,
  "Q42 End of survey remarks" = NA
)


# initializing  remark counter
remark_counter_ev_experience <- 0
remark_counter_ev_use <- 0
remark_counter_mobility_usage <- 0
remark_counter_pt_subscription <- 0
remark_counter_ev_advantages <- 0
remark_counter_ev_disadvantages <- 0
remark_counter_end_of_survey <- 0

# writing remarks into data frame
for (i in 1:n_all){
  if (
    ((grepl("-99", d$`Q12_EV-experience_8_TEXT`[i], fixed = TRUE)) == FALSE)
  )
  {
    remark_counter_ev_experience <- remark_counter_ev_experience + 1
    d_remark$`Q12 EV experience remarks`[remark_counter_ev_experience] <- d$`Q12_EV-experience_8_TEXT`[i]
  }
  
  if (
    ((grepl("-99", d$`Q14_EV-use_8_TEXT`[i], fixed = TRUE)) == FALSE)
  )
  {
    remark_counter_ev_use <- remark_counter_ev_use + 1
    d_remark$`Q14 EV use remarks`[remark_counter_ev_use] <- d$`Q14_EV-use_8_TEXT`[i]
  }
  
  if (
    ((grepl("-99", d$`Q15_mobility-usage_9_TEXT`[i], fixed = TRUE)) == FALSE)
  )
  {
    remark_counter_mobility_usage <- remark_counter_mobility_usage + 1
    d_remark$`Q15 mobility usage remarks`[remark_counter_mobility_usage] <- d$`Q15_mobility-usage_9_TEXT`[i]
  }
  
  if (
    ((grepl("-99", d$`Q16_PT-subscr_7_TEXT`[i], fixed = TRUE)) == FALSE)
  )
  {
    remark_counter_pt_subscription <- remark_counter_pt_subscription + 1
    d_remark$`Q16 PT subscription remarks`[remark_counter_pt_subscription] <- d$`Q16_PT-subscr_7_TEXT`[i]
  }
  
  if (
    ((grepl("-99", d$`Q40_EV-adv_8_TEXT`[i], fixed = TRUE)) == FALSE)
  )
  {
    remark_counter_ev_advantages <- remark_counter_ev_advantages + 1
    d_remark$`Q40 EV advantages remarks`[remark_counter_ev_advantages] <- d$`Q40_EV-adv_8_TEXT`[i]
  }
  
  if (
    ((grepl("-99", d$`Q41_EV-disadv_9_TEXT`[i], fixed = TRUE)) == FALSE)
  )
  {
    remark_counter_ev_disadvantages <- remark_counter_ev_disadvantages + 1
    d_remark$`Q41 EV disadvantages remarks`[remark_counter_ev_disadvantages] <- d$`Q41_EV-disadv_9_TEXT`[i]
  }
  
  if (
    ((grepl("-99", d$`Q42_end-of-survey`[i], fixed = TRUE)) == FALSE)
  )
  {
    remark_counter_end_of_survey <- remark_counter_end_of_survey + 1
    d_remark$`Q42 End of survey remarks`[remark_counter_end_of_survey] <- d$`Q42_end-of-survey`[i]
  }
}

# save output as csv file
write.csv(d_remark, file = "output/d_remark.csv", row.names = FALSE)

# variable cleanup
rm(remark_ID,
   remark_counter_ev_experience,
   remark_counter_ev_use,
   remark_counter_mobility_usage,
   remark_counter_pt_subscription,
   remark_counter_ev_advantages,
   remark_counter_ev_disadvantages,
   remark_counter_end_of_survey
)

