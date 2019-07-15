# Plotting of results
# Plots are separated according to the question number appearing in the survey

######################
# Q4 gender
######################

# convert data for plotting
d_gender_melt <- melt(data = d_gender, id.vars = "Gender Groups",  measure.vars = c("Percentage of Survey", "Percentage of 2015 Mobility Census"))
d_gender_melt$value <- d_gender_melt$value*100

# plot data
plot_age <- ggplot(
  data = d_gender_melt, 
  aes(x = `Gender Groups`, y = value, fill = variable)
) + 
  geom_bar(colour="black", stat="identity", position = position_dodge()) + # set black outline of bars, height of bars, position dodge
  xlab("Gender groups" ) + # set x axis label
  ylab("Percentage of total") + # set y axis label
  ggtitle("Gender distribution") + # set title
  scale_fill_brewer(palette = "Blues") # set color pattern

# display plot
print(plot_age)
dev.off() # removes displayed graphic

# save plot in file
ggsave("images/plot_gender.png", width = 10, height = 5)

# removal of temporary files
rm(d_gender_melt)

######################
# Q5 age
######################

# convert data for plotting
d_age_melt <- melt(data = d_age, id.vars = "Age Groups",  measure.vars = c("Percentage of Survey", "Percentage of 2015 Mobility Census"))
d_age_melt$value <- d_age_melt$value*100

# plot data
plot_age <- ggplot(
  data = d_age_melt, 
  aes(x = `Age Groups`, y = value, fill = variable)
) + 
  geom_bar(colour="black", stat="identity", position = position_dodge()) + # set black outline of bars, height of bars, position dodge
  xlab("Age groups") + # set x axis label
  ylab("Percentage of total") + # set y axis label
  ggtitle("Age distribution") + # set title
  scale_fill_brewer(palette = "Blues") # set color pattern

# display plot
print(plot_age)
dev.off() # removes displayed graphic

# save plot in file
ggsave("images/plot_age.png", width = 10, height = 5)

# removal of temporary files
rm(d_age_melt)

############ old stuf
op <- par(mfrow = c(3, 3))


hist(d$'Q18_PT-spend')
hist(d_age$`Percentage of Survey`)

hist(d$'Q2_lang-DE')
hist(d[[10]])
hist(d[[11]])
for (i in 10:15){
  hist(d[[i]])
  boxplot(d[[i]])  
}
boxplot(d$"Q5_age")
############3 end of old stuff

######################
# Q6 regions
######################

# convert data for plotting
d_region_temp <- d_region
d_region_temp$`Region Groups` <- c(
  "Lake Geneva", 
  "Espace Mittelland", 
  "Northwestern Switzerland", 
  "Zurich", 
  "Easter Switzerland",
  "Central Switzerland",
  "Ticino"
)
d_region_melt <- melt(data = d_region_temp, id.vars = "Region Groups",  measure.vars = c("Percentage of Survey", "Percentage of 2015 Mobility Census"))
d_region_melt$value <- d_region_melt$value*100

# plot data
plot_region <- ggplot(
  data = d_region_melt, 
  aes(x = `Region Groups`, y = value, fill = variable)
) + 
  geom_bar(colour="black", stat="identity", position = position_dodge()) + # set black outline of bars, height of bars, position dodge
  xlab("Region groups") + # set x axis label
  ylab("Percentage of total") + # set y axis label
  ggtitle("Regional distribution") + # set title
  scale_fill_brewer(palette = "Blues") + # set color pattern
  theme(axis.text.x = element_text(angle = 90)) # rotates x-axis text by 90 degrees

# display plot
print(plot_region)
dev.off() # removes displayed graphic

# save plot in file
ggsave("images/plot_region.png", width = 10, height = 5)

# removal of temporary files
rm(
  d_region_temp,
  d_region_melt
   )

######################
# Q8 income
######################

# convert data for plotting
d_income_melt <- melt(data = d_income, id.vars = "Income Groups",  measure.vars = c("Percentage of Survey", "Percentage of 2015 Mobility Census"))
d_income_melt$value <- d_income_melt$value*100

# plot data
plot_income <- ggplot(
  data = d_income_melt, 
  aes(x = `Income Groups`, y = value, fill = variable, factor(`Income Groups`))
) + 
  geom_bar(colour="black", stat="identity", position = position_dodge()) + # set black outline of bars, height of bars, position dodge
  xlab("Income groups") + # set x axis label
  scale_x_discrete(limits=c("Below 4'000", 
                            "4'000 - 8'000", 
                            "8'000 - 12'000",
                            "Above 12'000",
                            "Don't know/no comment")) + # rearrange values on x-axis
  ylab("Percentage of total") + # set y axis label
  ggtitle("Income distribution") + # set title
  scale_fill_brewer(palette = "Blues") + # set color pattern
  theme(axis.text.x = element_text(angle = 90)) # rotates x-axis text by 90 degrees


# display plot
print(plot_income)
dev.off() # removes displayed graphic

# save plot in file
ggsave("images/plot_income.png", width = 10, height = 5)

# removal of temporary files
rm(d_income_melt)

######################
# Q12 EV driving experience
######################

######################
# Q14 EV use
######################

######################
# Q15 mobility usage
######################

######################
# Q16 Public transport subscriptions
######################

######################
# Q17-19 mobility spending
######################

######################
# Q24 # EV battery range for commutes
######################

######################
# Q25 # EV battery range for all ranges
######################

######################
# Q27 Mobility subscription interest
######################

######################
# Q28 Mobility subscription willingness to pay
######################

######################
# Q30, 32, 34, 36, 38 Mobility subscriptions 1, 2, 3, 4, 5 purchase intent
######################

######################
# Q40 EV advantages
######################

######################
# Q41 EV disadvantages
######################
