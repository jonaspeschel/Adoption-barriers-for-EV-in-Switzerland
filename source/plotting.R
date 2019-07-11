# Plotting of results
# Plots are separated according to the question number appearing in the survey

######################
# Q4 gender
######################

######################
# Q5 age
######################

plot_age <- ggplot(
  data = d_age, 
  aes(x = `Age Groups`, y = `Percentage of Survey`),
  color = d_age$Survey
  ) + 
  geom_bar() +
  xlab("Age groups") +
  ylab("Percentage of total") +
  ggtitle("Distribution of age in survey")

ggsave("images/plot_age.png", width = 5, height = 5)

# plotting of region distributions
ggplot(data = d_region, mapping = aes(x = d_region$`Region Groups`, y = d_region$`Percentage of Survey`)) + geom_col()
ggsave("region.png", width = 5, height = 5)

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

######################
# Q6 regions
######################

######################
# Q8 income
######################

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
