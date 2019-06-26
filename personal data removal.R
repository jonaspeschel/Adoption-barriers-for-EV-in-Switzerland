#removal of personal data
data_raw <- read_csv("survey v4.4-data for R.csv", col_types = cols(
  IPAddress = col_skip()
)
)

#removal of email adress
for (i in 1:length(data_raw$StartDate)){
  
  has_email_adress <- grepl("@", data_raw$`Q42_end-of-survey`[i], fixed = TRUE)
  # print(has_email_adress)
  if( has_email_adress == TRUE){
    data_raw$`Q42_end-of-survey`[i] <- "removed: personal data" #removes email adress data, replaced with placeholder
  }
}

write.csv(data_raw, file = "data_raw.csv", row.names = FALSE)