# Plotting of results
# Plots are separated according to the question number appearing in the survey

######################
# Q4 gender
######################

# convert data for plotting
d_gender_plot <- melt(data = d_gender, id.vars = "Gender Groups",  measure.vars = c("Percentage of Survey", "Percentage of 2015 Mobility Census"))
d_gender_plot$value <- round(d_gender_plot$value*100, digits=1)

# plot data
plot_gender <- ggplot(
  data = d_gender_plot, 
  aes(x = `Gender Groups`, y = value, fill = variable)
) + 
  geom_bar(colour="black", stat="identity", position = position_dodge()) + # set black outline of bars, height of bars, position dodge
  xlab("Gender groups" ) + # set x axis label
  geom_text(aes(label= value), position = position_dodge(width=0.9), vjust = -0.25) + # Add value on top of bars
  ylab("Percentage of total") + # set y axis label
  ggtitle("Gender distribution") + # set title
  scale_fill_brewer(palette = "Blues") + # set color pattern
  theme(text = element_text(size=18), # change font size to 20
        panel.grid.major = element_blank(), # remove background grid
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        axis.line = element_line(colour = "black")) # add axis line

# display plot
print(plot_gender)
dev.off() # removes displayed graphic

# save plot in file
ggsave("images/plot_gender.png", width = 10, height = 5)

# removal of temporary files
rm(d_gender_plot,
   plot_gender)

######################
# Q5 age
######################

# convert data for plotting
d_age_plot <- melt(data = d_age, id.vars = "Age Groups",  measure.vars = c("Percentage of Survey", "Percentage of 2015 Mobility Census"))
d_age_plot$value <- round(d_age_plot$value*100, digits=1)

# plot data
plot_age <- ggplot(
  data = d_age_plot, 
  aes(x = `Age Groups`, y = value, fill = variable)
) + 
  geom_bar(colour="black", stat="identity", position = position_dodge()) + # set black outline of bars, height of bars, position dodge
  xlab("Age groups") + # set x axis label
  geom_text(aes(label= value), position = position_dodge(width=0.9), vjust = -0.25) + # Add value on top of bars
  ylab("Percentage of total") + # set y axis label
  ggtitle("Age distribution") + # set title
  scale_fill_brewer(palette = "Blues") + # set color pattern
  theme(text = element_text(size=18), # change font size to 20
      panel.grid.major = element_blank(), # remove background grid
      panel.grid.minor = element_blank(),
      panel.background = element_blank(),
      axis.line = element_line(colour = "black")) # add axis line


# display plot
print(plot_age)
dev.off() # removes displayed graphic

# save plot in file
ggsave("images/plot_age.png", width = 10, height = 5)

# removal of temporary files
rm(d_age_plot,
   plot_age)

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
d_region_plot <- melt(data = d_region_temp, id.vars = "Region Groups",  measure.vars = c("Percentage of Survey", "Percentage of 2015 Mobility Census"))
d_region_plot$value <- round(d_region_plot$value*100, digits = 1)

# plot data
plot_region <- ggplot(
  data = d_region_plot, 
  aes(x = `Region Groups`, y = value, fill = variable)
) + 
  geom_bar(colour="black", stat="identity", position = position_dodge()) + # set black outline of bars, height of bars, position dodge
  xlab("Region groups") + # set x axis label
  scale_x_discrete(limits=c("Lake Geneva", 
                            "Espace Mittelland", 
                            "Northwestern Switzerland", 
                            "Zurich", 
                            "Easter Switzerland",
                            "Central Switzerland",
                            "Ticino")) + # rearrange values on x-axis
  geom_text(aes(label= value), position = position_dodge(width=0.9), vjust = -0.25) + # Add value on top of bars
  ylab("Percentage of total") + # set y axis label
  ggtitle("Regional distribution") + # set title
  scale_fill_brewer(palette = "Blues") + # set color pattern
  theme(text = element_text(size=18), # change font size to 20
        axis.text.x = element_text(angle = 90), # rotates x-axis text by 90 degrees
        panel.grid.major = element_blank(), # remove background grid
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        axis.line = element_line(colour = "black")) # add axis line

# display plot
print(plot_region)
dev.off() # removes displayed graphic

# save plot in file
ggsave("images/plot_region.png", width = 10, height = 8)

# removal of temporary files
rm(
  d_region_temp,
  d_region_plot,
  plot_region
   )

######################
# Q8 income
######################

# convert data for plotting
d_income_plot <- melt(data = d_income, id.vars = "Income Groups",  measure.vars = c("Percentage of Survey", "Percentage of 2015 Mobility Census"))
d_income_plot$value <- round(d_income_plot$value*100, digits = 1)

# plot data
plot_income <- ggplot(
  data = d_income_plot, 
  aes(x = `Income Groups`, y = value, fill = variable, factor(`Income Groups`))
) + 
  geom_bar(colour="black", stat="identity", position = position_dodge()) + # set black outline of bars, height of bars, position dodge
  xlab("Income groups") + # set x axis label
  scale_x_discrete(limits=c("Below 4'000", 
                            "4'000 - 8'000", 
                            "8'000 - 12'000",
                            "Above 12'000",
                            "Don't know/no comment")) + # rearrange values on x-axis
  geom_text(aes(label= value), position = position_dodge(width=0.9), vjust = -0.25) + # Add value on top of bars
  ylab("Percentage of total") + # set y axis label
  ggtitle("Income distribution") + # set title
  scale_fill_brewer(palette = "Blues") + # set color pattern
  theme(text = element_text(size=18), # change font size to 20
        axis.text.x = element_text(angle = 90), # rotates x-axis text by 90 degrees
        panel.grid.major = element_blank(), # remove background grid
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        axis.line = element_line(colour = "black")) # add axis line


# display plot
print(plot_income)
dev.off() # removes displayed graphic

# save plot in file
ggsave("images/plot_income.png", width = 10, height = 8)

# removal of temporary files
rm(d_income_plot,
   plot_income)

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

# Convert data for plotting
d_mob_subscr_pi_plot <- melt(data = d_mob_subscr_pi, id.vars = "Groups",
                             measure.vars = c("Percentage of Subscription 1"))
d_mob_subscr_pi_plot$value <- d_mob_subscr_pi_plot$value*100

# test without melt
d_mob_subscr_pi_plot <- d_mob_subscr_pi
d_mob_subscr_pi_plot$`Percentage of Subscription 1` <- round(d_mob_subscr_pi_plot$`Percentage of Subscription 1`*100, digits=1)
d_mob_subscr_pi_plot$`Percentage of Subscription 2` <- round(d_mob_subscr_pi_plot$`Percentage of Subscription 2`*100, digits=1)
d_mob_subscr_pi_plot$`Percentage of Subscription 3` <- round(d_mob_subscr_pi_plot$`Percentage of Subscription 3`*100, digits=1)
d_mob_subscr_pi_plot$`Percentage of Subscription 4` <- round(d_mob_subscr_pi_plot$`Percentage of Subscription 4`*100, digits=1)
d_mob_subscr_pi_plot$`Percentage of Subscription 5` <- round(d_mob_subscr_pi_plot$`Percentage of Subscription 5`*100, digits=1)

# plot data
plot_mob_subscr_pi_1 <- ggplot(
  data = d_mob_subscr_pi_plot, 
  aes(x = Groups, y = `Percentage of Subscription 1`, factor(Groups))
) + 
  geom_bar(colour="black", fill = "Blue", stat="identity", position = position_dodge()) + # set black outline of bars, height of bars, position dodge
  xlab("Purchase intent level") + # set x axis label
  scale_x_discrete(limits=c("I do not know",
                            "1 Not interested at all",
                            "2 Slightly uninterested",
                            "3 Neutral",
                            "4 Interested",
                            "5 Very interested")) + # rearrange values on x-axis
  geom_text(aes(label= `Percentage of Subscription 1`), position = position_dodge(width=0.9), vjust = -0.25) + # Add value on top of bars
  ylab("Percentage of total") + # set y axis label
  ggtitle("Mobility subscription 1 purchase intent") + # set title
  scale_fill_brewer(palette = "Blues") + # set color pattern
  theme(text = element_text(size=18), # change font size to 20
    axis.text.x = element_text(angle = 90), # rotates x-axis text by 90 degrees
        panel.grid.major = element_blank(), # remove background grid
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        axis.line = element_line(colour = "black")) # add axis line

plot_mob_subscr_pi_2 <- ggplot(
  data = d_mob_subscr_pi_plot, 
  aes(x = Groups, y = `Percentage of Subscription 2`, factor(Groups))
) + 
  geom_bar(colour="black", fill = "Blue", stat="identity", position = position_dodge()) + # set black outline of bars, height of bars, position dodge
  xlab("Purchase intent level") + # set x axis label
  scale_x_discrete(limits=c("I do not know",
                            "1 Not interested at all",
                            "2 Slightly uninterested",
                            "3 Neutral",
                            "4 Interested",
                            "5 Very interested")) + # rearrange values on x-axis
  geom_text(aes(label= `Percentage of Subscription 2`), position = position_dodge(width=0.9), vjust = -0.25) + # Add value on top of bars
  ylab("Percentage of total") + # set y axis label
  ggtitle("Mobility subscription 2 purchase intent") + # set title
  scale_fill_brewer(palette = "Blues") + # set color pattern
  theme(text = element_text(size=18), # change font size to 20
        axis.text.x = element_text(angle = 90), # rotates x-axis text by 90 degrees
        panel.grid.major = element_blank(), # remove background grid
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        axis.line = element_line(colour = "black")) # add axis line

plot_mob_subscr_pi_3 <- ggplot(
  data = d_mob_subscr_pi_plot, 
  aes(x = Groups, y = `Percentage of Subscription 3`, factor(Groups))
) + 
  geom_bar(colour="black", fill = "Blue", stat="identity", position = position_dodge()) + # set black outline of bars, height of bars, position dodge
  xlab("Purchase intent level") + # set x axis label
  scale_x_discrete(limits=c("I do not know",
                            "1 Not interested at all",
                            "2 Slightly uninterested",
                            "3 Neutral",
                            "4 Interested",
                            "5 Very interested")) + # rearrange values on x-axis
  geom_text(aes(label= `Percentage of Subscription 3`), position = position_dodge(width=0.9), vjust = -0.25) + # Add value on top of bars
  ylab("Percentage of total") + # set y axis label
  ggtitle("Mobility subscription 3 purchase intent") + # set title
  scale_fill_brewer(palette = "Blues") + # set color pattern
  theme(text = element_text(size=18), # change font size to 20
        axis.text.x = element_text(angle = 90), # rotates x-axis text by 90 degrees
        panel.grid.major = element_blank(), # remove background grid
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        axis.line = element_line(colour = "black")) # add axis line

plot_mob_subscr_pi_4 <- ggplot(
  data = d_mob_subscr_pi_plot, 
  aes(x = Groups, y = `Percentage of Subscription 4`, factor(Groups))
) + 
  geom_bar(colour="black", fill = "Blue", stat="identity", position = position_dodge()) + # set black outline of bars, height of bars, position dodge
  xlab("Purchase intent level") + # set x axis label
  scale_x_discrete(limits=c("I do not know",
                            "1 Not interested at all",
                            "2 Slightly uninterested",
                            "3 Neutral",
                            "4 Interested",
                            "5 Very interested")) + # rearrange values on x-axis
  geom_text(aes(label= `Percentage of Subscription 4`), position = position_dodge(width=0.9), vjust = -0.25) + # Add value on top of bars
  ylab("Percentage of total") + # set y axis label
  ggtitle("Mobility subscription 4 purchase intent") + # set title
  scale_fill_brewer(palette = "Blues") + # set color pattern
  theme(text = element_text(size=18), # change font size to 20
        axis.text.x = element_text(angle = 90), # rotates x-axis text by 90 degrees
        panel.grid.major = element_blank(), # remove background grid
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        axis.line = element_line(colour = "black")) # add axis line

plot_mob_subscr_pi_5 <- ggplot(
  data = d_mob_subscr_pi_plot, 
  aes(x = Groups, y = `Percentage of Subscription 5`, factor(Groups))
) + 
  geom_bar(colour="black", fill = "Blue", stat="identity", position = position_dodge()) + # set black outline of bars, height of bars, position dodge
  xlab("Purchase intent level") + # set x axis label
  scale_x_discrete(limits=c("I do not know",
                            "1 Not interested at all",
                            "2 Slightly uninterested",
                            "3 Neutral",
                            "4 Interested",
                            "5 Very interested")) + # rearrange values on x-axis
  geom_text(aes(label= `Percentage of Subscription 5`), position = position_dodge(width=0.9), vjust = -0.25) + # Add value on top of bars
  ylab("Percentage of total") + # set y axis label
  ggtitle("Mobility subscription 5 purchase intent") + # set title
  scale_fill_brewer(palette = "Blues") + # set color pattern
  theme(text = element_text(size=18), # change font size to 20
        axis.text.x = element_text(angle = 90), # rotates x-axis text by 90 degrees
        panel.grid.major = element_blank(), # remove background grid
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        axis.line = element_line(colour = "black")) # add axis line


# display plot
print(plot_mob_subscr_pi_1)
dev.off() # removes displayed graphic
# save plot in file
ggsave("images/plot_mob_subscr_pi_1.png", width = 10, height = 8)

# display plot
print(plot_mob_subscr_pi_2)
dev.off() # removes displayed graphic
# save plot in file
ggsave("images/plot_mob_subscr_pi_2.png", width = 10, height = 8)

# display plot
print(plot_mob_subscr_pi_3)
dev.off() # removes displayed graphic
# save plot in file
ggsave("images/plot_mob_subscr_pi_3.png", width = 10, height = 8)

# display plot
print(plot_mob_subscr_pi_4)
dev.off() # removes displayed graphic
# save plot in file
ggsave("images/plot_mob_subscr_pi_4.png", width = 10, height = 8)

# display plot
print(plot_mob_subscr_pi_5)
dev.off() # removes displayed graphic
# save plot in file
ggsave("images/plot_mob_subscr_pi_5.png", width = 10, height = 8)


# removal of temporary files
rm(d_mob_subscr_pi_plot,
   plot_mob_subscr_pi_1,
   plot_mob_subscr_pi_2,
   plot_mob_subscr_pi_3,
   plot_mob_subscr_pi_4,
   plot_mob_subscr_pi_5
   )

######################
# Q40 EV advantages
######################

# Convert data for plotting
d_EV_adv_plot <- d_EV_adv
d_EV_adv_plot$`Percentage of Survey` <- round(d_EV_adv_plot$`Percentage of Survey`*100, digits = 1)

# plot data
plot_EV_adv <- ggplot(
  data = d_EV_adv_plot, 
  aes(x = `EV advantages groups`, y = `Percentage of Survey`, factor(`EV advantages groups`))
) + 
  geom_bar(colour="black", fill = "Blue", stat="identity", position = position_dodge()) + # set black outline of bars, height of bars, position dodge
  xlab("EV advantages choices") + # set x axis label
  scale_x_discrete(limits=c("Environmental impact",
                            "Low CO2 emissions",
                            "Little noise",
                            "Improved air quality",
                            "Savings in operating costs",
                            "Savings in total cost of ownership",
                            "Pleasant driving experience",
                            "Other")) + # rearrange values on x-axis
  geom_text(aes(label= `Percentage of Survey`), position = position_dodge(width=0.9), vjust = -0.25) + # Add value on top of bars
  ylab("Percentage of total") + # set y axis label
  ggtitle("EV advantages share of choices") + # set title
  scale_fill_brewer(palette = "Blues") + # set color pattern
  theme(text = element_text(size=18), # change font size to 20
        axis.text.x = element_text(angle = 90), # rotates x-axis text by 90 degrees
        panel.grid.major = element_blank(), # remove background grid
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        axis.line = element_line(colour = "black")) # add axis line


# display plot
print(plot_EV_adv)
dev.off() # removes displayed graphic

# save plot in file
ggsave("images/plot_EV_adv.png", width = 10, height = 10)

# removal of temporary files
rm(d_EV_adv_plot,
   plot_EV_adv)

######################
# Q41 EV disadvantages
######################

# Convert data for plotting
d_EV_disadv_plot <- d_EV_disadv
d_EV_disadv_plot$`Percentage of Survey` <- round(d_EV_disadv_plot$`Percentage of Survey`*100, digits = 1)

# plot data
plot_EV_disadv <- ggplot(
  data = d_EV_disadv_plot, 
  aes(x = `EV disadvantages groups`, y = `Percentage of Survey`, factor(`EV disadvantages groups`))
) + 
  geom_bar(colour="black", fill = "Blue", stat="identity", position = position_dodge()) + # set black outline of bars, height of bars, position dodge
  xlab("EV disadvantages choices") + # set x axis label
  scale_x_discrete(limits=c("Battery range",
                            "Charging time",
                            "High purchasing price of the vehicle",
                            "Charging infrastructure: at home",
                            "Charging infrastructure: public charging infrastructure",
                            "Charging infrastructure: at work",
                            "Lack of information about electric vehicles",
                            "Limited choice of vehicle models",
                            "Other")) + # rearrange values on x-axis
  geom_text(aes(label= `Percentage of Survey`), position = position_dodge(width=0.9), vjust = -0.25) + # Add value on top of bars
  ylab("Percentage of total") + # set y axis label
  ggtitle("EV disadvantages share of choices") + # set title
  scale_fill_brewer(palette = "Blues") + # set color pattern
  theme(text = element_text(size=18), # change font size to 20
        axis.text.x = element_text(angle = 90), # rotates x-axis text by 90 degrees
        panel.grid.major = element_blank(), # remove background grid
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        axis.line = element_line(colour = "black")) # add axis line


# display plot
print(plot_EV_disadv)
dev.off() # removes displayed graphic

# save plot in file
ggsave("images/plot_EV_disadv.png", width = 10, height = 10)

# removal of temporary files
rm(d_EV_disadv_plot,
   plot_EV_disadv)
