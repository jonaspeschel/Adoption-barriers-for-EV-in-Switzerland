# Q17-19 Public transport spending
##########################################

# public transport spending categories are defined below. Behind each category there is the Qualtrics coding value
# !!!! There were doubled answer choices in the survey! Accordingly, the recoding of values is important.
# 100 CHF or less	1
# 101 to 200 CHF	2
# 201 to 300 CHF	3
# 301 to 400 CHF	4
# 401 to 500 CHF	5
# 501 to 600 CHF	6
# 601 to 700 CHF	7
# 701 to 800 CHF	8
# 801 to 900 CHF	9
# 901 to 1'000 CHF	10
# 1'001 to 1'100 CHF	11
# 1'101 to 1'200 CHF	12
# 1'201 to 1'300 CHF	13
# 1'301 to 1'400 CHF	14
# 1'401 to 1'500 CHF	15
# 1'501 to 1'600 CHF	16
# 1'601 to 1'700 CHF	17
# 1'701 to 1'800 CHF	18
# 1'801 to 1'900 CHF	19
# 1'901 to 2'000 CHF	20
# 2'001 to 2'100 CHF	21
# 2'101 to 2'200 CHF	22
# 2'201 to 2'300 CHF	23
# 2'301 to 2'400 CHF	24
# 2'401 to 2'500 CHF	25
# 2'501 to 2'600 CHF	26
# 2'601 to 2'700 CHF	27
# 2'701 to 2'800 CHF	28
# 2'801 to 2'900 CHF	29
# 2'901 to 3'000 CHF	30
# 3'001 to 3'100 CHF	31
# 3'101 to 3'200 CHF	32
# 3'201 to 3'300 CHF	33
# 3'301 to 3'400 CHF	34
# 3'401 to 3'500 CHF	35
# 3'501 to 3'600 CHF	36
# 3'601 to 3'700 CHF	37
# 3'701 to 3'800 CHF	38
# 3'801 to 3'900 CHF	39
# 3'901 to 4'000 CHF	40
# 4'001 to 4'100 CHF	41
# 4'101 to 4'200 CHF	42
# 4'201 to 4'300 CHF	43
# 4'301 to 4'400 CHF	44
# 4'401 to 4'500 CHF	45
# 4'501 to 4'600 CHF	46
# 4,601 to 4,700 CHF	47
# 4'701 to 4'800 CHF	48
# 4'801 to 4'900 CHF	49
# 4'901 to 5'000 CHF	50
# 5'001 to 5'100 CHF	51
# 5'101 to 5'200 CHF	52
# 5'201 to 5'300 CHF	53
# 5'301 to 5'400 CHF	54
# 5'401 to 5'500 CHF	55
# 5'501 to 5'600 CHF	56
# 5'601 to 5'700 CHF	57
# 5'701 to 4'800 CHF	58
# 5'801 to 5'900 CHF	59
# 5'901 to 6'000 CHF	60
# 6'001 to 6'100 CHF	61
# 6'101 to 6'200 CHF	62
# 5'201 to 5'300 CHF	63 <--- Doubling of income category starts here, need to manually recode qualtrics values
# 5'301 to 5'400 CHF	64
# 5'401 to 5'500 CHF	65
# 5'501 to 5'600 CHF	66
# 5'601 to 5'700 CHF	67
# 5'701 to 4'800 CHF	68
# 5'801 to 5'900 CHF	69
# 5'901 to 6'000 CHF	70
# 6'001 to 6'100 CHF	71
# 6'101 to 6'200 CHF	72
# 6'201 to 6'300 CHF	73
# 6'301 to 6'400 CHF	74
# 6'401 to 6'500 CHF	75
# 6'501 to 6'600 CHF	76
# 6'601 to 6'700 CHF	77
# 6'701 to 6'800 CHF	78
# 6'801 to 6'900 CHF	79
# 6'901 to 7'000 CHF	80
# 7'001 to 7'100 CHF	81
# 7'101 to 7'200 CHF	82
# 7'201 to 7'300 CHF	83
# 7'301 to 7'400 CHF	84
# 7'401 to 7'500 CHF	85
# 7'501 to 7'600 CHF	86
# 7'601 to 7'700 CHF	87
# 7'701 to 7'800 CHF	88
# 7'801 to 7'900 CHF	89
# 7'901 to 8'000 CHF	90
# 8'001 to 8'100 CHF	91
# 8'101 to 8'200 CHF	92
# 8'201 to 8'300 CHF	93
# 8'301 to 8'400 CHF	94
# 8'401 to 8'500 CHF	95
# 8'501 to 8'600 CHF	96
# 8'601 to 8'700 CHF	97
# 8'701 to 8'800 CHF	98
# 8'801 to 8'900 CHF	99
# 8'901 to 9'000 CHF	100
# 9'001 to 9'100 CHF	101
# 9'101 to 9'200 CHF	102
# 9'201 to 9'300 CHF	103
# 9'301 to 9'400 CHF	104
# 9'401 to 9'500 CHF	105
# 9'501 to 9'600 CHF	106
# 9'601 to 9'700 CHF	107
# 9'701 to 9'800 CHF	108
# 9'801 to 9'900 CHF	109
# 9'901 to 10'000 CHF	110
# More than 10'000 CHF	111

# Coding of time intervals:
# Per year 1
# Per month 2

# setup of data frame
# each column has the count of occurences in the respective group
mobility_spend_group_ID <- 1:101
mobility_spend_group_ranges <- c(
  "100 CHF or less",
  "101 to 200 CHF",
  "201 to 300 CHF",
  "301 to 400 CHF",
  "401 to 500 CHF",
  "501 to 600 CHF",
  "601 to 700 CHF",
  "701 to 800 CHF",
  "801 to 900 CHF",
  "901 to 1'000 CHF",
  "1'001 to 1'100 CHF",
  "1'101 to 1'200 CHF",
  "1'201 to 1'300 CHF",
  "1'301 to 1'400 CHF",
  "1'401 to 1'500 CHF",
  "1'501 to 1'600 CHF",
  "1'601 to 1'700 CHF",
  "1'701 to 1'800 CHF",
  "1'801 to 1'900 CHF",
  "1'901 to 2'000 CHF",
  "2'001 to 2'100 CHF",
  "2'101 to 2'200 CHF",
  "2'201 to 2'300 CHF",
  "2'301 to 2'400 CHF",
  "2'401 to 2'500 CHF",
  "2'501 to 2'600 CHF",
  "2'601 to 2'700 CHF",
  "2'701 to 2'800 CHF",
  "2'801 to 2'900 CHF",
  "2'901 to 3'000 CHF",
  "3'001 to 3'100 CHF",
  "3'101 to 3'200 CHF",
  "3'201 to 3'300 CHF",
  "3'301 to 3'400 CHF",
  "3'401 to 3'500 CHF",
  "3'501 to 3'600 CHF",
  "3'601 to 3'700 CHF",
  "3'701 to 3'800 CHF",
  "3'801 to 3'900 CHF",
  "3'901 to 4'000 CHF",
  "4'001 to 4'100 CHF",
  "4'101 to 4'200 CHF",
  "4'201 to 4'300 CHF",
  "4'301 to 4'400 CHF",
  "4'401 to 4'500 CHF",
  "4'501 to 4'600 CHF",
  "4,601 to 4,700 CHF",
  "4'701 to 4'800 CHF",
  "4'801 to 4'900 CHF",
  "4'901 to 5'000 CHF",
  "5'001 to 5'100 CHF",
  "5'101 to 5'200 CHF",
  "5'201 to 5'300 CHF",
  "5'301 to 5'400 CHF",
  "5'401 to 5'500 CHF",
  "5'501 to 5'600 CHF",
  "5'601 to 5'700 CHF",
  "5'701 to 4'800 CHF",
  "5'801 to 5'900 CHF",
  "5'901 to 6'000 CHF",
  "6'001 to 6'100 CHF",
  "6'101 to 6'200 CHF",
  "6'201 to 6'300 CHF",
  "6'301 to 6'400 CHF",
  "6'401 to 6'500 CHF",
  "6'501 to 6'600 CHF",
  "6'601 to 6'700 CHF",
  "6'701 to 6'800 CHF",
  "6'801 to 6'900 CHF",
  "6'901 to 7'000 CHF",
  "7'001 to 7'100 CHF",
  "7'101 to 7'200 CHF",
  "7'201 to 7'300 CHF",
  "7'301 to 7'400 CHF",
  "7'401 to 7'500 CHF",
  "7'501 to 7'600 CHF",
  "7'601 to 7'700 CHF",
  "7'701 to 7'800 CHF",
  "7'801 to 7'900 CHF",
  "7'901 to 8'000 CHF",
  "8'001 to 8'100 CHF",
  "8'101 to 8'200 CHF",
  "8'201 to 8'300 CHF",
  "8'301 to 8'400 CHF",
  "8'401 to 8'500 CHF",
  "8'501 to 8'600 CHF",
  "8'601 to 8'700 CHF",
  "8'701 to 8'800 CHF",
  "8'801 to 8'900 CHF",
  "8'901 to 9'000 CHF",
  "9'001 to 9'100 CHF",
  "9'101 to 9'200 CHF",
  "9'201 to 9'300 CHF",
  "9'301 to 9'400 CHF",
  "9'401 to 9'500 CHF",
  "9'501 to 9'600 CHF",
  "9'601 to 9'700 CHF",
  "9'701 to 9'800 CHF",
  "9'801 to 9'900 CHF",
  "9'901 to 10'000 CHF",
  "More than 10'000 CHF"
)

# Setup tibble structure for data storage
d_mobility_spend = tibble(
  "Transport spending group ID" = mobility_spend_group_ID, 
  "Transport spending groups" = mobility_spend_group_ranges, 
  "Public transport mobility spending" = NA,
  "Car mobility spending" = NA
)

# initializing counters for each item
mobility_spend_pt_group_counter_1 <- as.integer(0)
mobility_spend_pt_group_counter_2 <- as.integer(0)
mobility_spend_pt_group_counter_3 <- as.integer(0)
mobility_spend_pt_group_counter_4 <- as.integer(0)
mobility_spend_pt_group_counter_5 <- as.integer(0)
mobility_spend_pt_group_counter_6 <- as.integer(0)
mobility_spend_pt_group_counter_7 <- as.integer(0)
mobility_spend_pt_group_counter_8 <- as.integer(0)
mobility_spend_pt_group_counter_9 <- as.integer(0)
mobility_spend_pt_group_counter_10 <- as.integer(0)
mobility_spend_pt_group_counter_11 <- as.integer(0)
mobility_spend_pt_group_counter_12 <- as.integer(0)
mobility_spend_pt_group_counter_13 <- as.integer(0)
mobility_spend_pt_group_counter_14 <- as.integer(0)
mobility_spend_pt_group_counter_15 <- as.integer(0)
mobility_spend_pt_group_counter_16 <- as.integer(0)
mobility_spend_pt_group_counter_17 <- as.integer(0)
mobility_spend_pt_group_counter_18 <- as.integer(0)
mobility_spend_pt_group_counter_19 <- as.integer(0)
mobility_spend_pt_group_counter_20 <- as.integer(0)
mobility_spend_pt_group_counter_21 <- as.integer(0)
mobility_spend_pt_group_counter_22 <- as.integer(0)
mobility_spend_pt_group_counter_23 <- as.integer(0)
mobility_spend_pt_group_counter_24 <- as.integer(0)
mobility_spend_pt_group_counter_25 <- as.integer(0)
mobility_spend_pt_group_counter_26 <- as.integer(0)
mobility_spend_pt_group_counter_27 <- as.integer(0)
mobility_spend_pt_group_counter_28 <- as.integer(0)
mobility_spend_pt_group_counter_29 <- as.integer(0)
mobility_spend_pt_group_counter_30 <- as.integer(0)
mobility_spend_pt_group_counter_31 <- as.integer(0)
mobility_spend_pt_group_counter_32 <- as.integer(0)
mobility_spend_pt_group_counter_33 <- as.integer(0)
mobility_spend_pt_group_counter_34 <- as.integer(0)
mobility_spend_pt_group_counter_35 <- as.integer(0)
mobility_spend_pt_group_counter_36 <- as.integer(0)
mobility_spend_pt_group_counter_37 <- as.integer(0)
mobility_spend_pt_group_counter_38 <- as.integer(0)
mobility_spend_pt_group_counter_39 <- as.integer(0)
mobility_spend_pt_group_counter_40 <- as.integer(0)
mobility_spend_pt_group_counter_41 <- as.integer(0)
mobility_spend_pt_group_counter_42 <- as.integer(0)
mobility_spend_pt_group_counter_43 <- as.integer(0)
mobility_spend_pt_group_counter_44 <- as.integer(0)
mobility_spend_pt_group_counter_45 <- as.integer(0)
mobility_spend_pt_group_counter_46 <- as.integer(0)
mobility_spend_pt_group_counter_47 <- as.integer(0)
mobility_spend_pt_group_counter_48 <- as.integer(0)
mobility_spend_pt_group_counter_49 <- as.integer(0)
mobility_spend_pt_group_counter_50 <- as.integer(0)
mobility_spend_pt_group_counter_51 <- as.integer(0)
mobility_spend_pt_group_counter_52 <- as.integer(0)
mobility_spend_pt_group_counter_53 <- as.integer(0)
mobility_spend_pt_group_counter_54 <- as.integer(0)
mobility_spend_pt_group_counter_55 <- as.integer(0)
mobility_spend_pt_group_counter_56 <- as.integer(0)
mobility_spend_pt_group_counter_57 <- as.integer(0)
mobility_spend_pt_group_counter_58 <- as.integer(0)
mobility_spend_pt_group_counter_59 <- as.integer(0)
mobility_spend_pt_group_counter_60 <- as.integer(0)
mobility_spend_pt_group_counter_61 <- as.integer(0)
mobility_spend_pt_group_counter_62 <- as.integer(0)
mobility_spend_pt_group_counter_63 <- as.integer(0)
mobility_spend_pt_group_counter_64 <- as.integer(0)
mobility_spend_pt_group_counter_65 <- as.integer(0)
mobility_spend_pt_group_counter_66 <- as.integer(0)
mobility_spend_pt_group_counter_67 <- as.integer(0)
mobility_spend_pt_group_counter_68 <- as.integer(0)
mobility_spend_pt_group_counter_69 <- as.integer(0)
mobility_spend_pt_group_counter_70 <- as.integer(0)
mobility_spend_pt_group_counter_71 <- as.integer(0)
mobility_spend_pt_group_counter_72 <- as.integer(0)
mobility_spend_pt_group_counter_73 <- as.integer(0)
mobility_spend_pt_group_counter_74 <- as.integer(0)
mobility_spend_pt_group_counter_75 <- as.integer(0)
mobility_spend_pt_group_counter_76 <- as.integer(0)
mobility_spend_pt_group_counter_77 <- as.integer(0)
mobility_spend_pt_group_counter_78 <- as.integer(0)
mobility_spend_pt_group_counter_79 <- as.integer(0)
mobility_spend_pt_group_counter_80 <- as.integer(0)
mobility_spend_pt_group_counter_81 <- as.integer(0)
mobility_spend_pt_group_counter_82 <- as.integer(0)
mobility_spend_pt_group_counter_83 <- as.integer(0)
mobility_spend_pt_group_counter_84 <- as.integer(0)
mobility_spend_pt_group_counter_85 <- as.integer(0)
mobility_spend_pt_group_counter_86 <- as.integer(0)
mobility_spend_pt_group_counter_87 <- as.integer(0)
mobility_spend_pt_group_counter_88 <- as.integer(0)
mobility_spend_pt_group_counter_89 <- as.integer(0)
mobility_spend_pt_group_counter_90 <- as.integer(0)
mobility_spend_pt_group_counter_91 <- as.integer(0)
mobility_spend_pt_group_counter_92 <- as.integer(0)
mobility_spend_pt_group_counter_93 <- as.integer(0)
mobility_spend_pt_group_counter_94 <- as.integer(0)
mobility_spend_pt_group_counter_95 <- as.integer(0)
mobility_spend_pt_group_counter_96 <- as.integer(0)
mobility_spend_pt_group_counter_97 <- as.integer(0)
mobility_spend_pt_group_counter_98 <- as.integer(0)
mobility_spend_pt_group_counter_99 <- as.integer(0)
mobility_spend_pt_group_counter_100 <- as.integer(0)
mobility_spend_pt_group_counter_101 <- as.integer(0)

mobility_spend_car_group_counter_1 <- as.integer(0)
mobility_spend_car_group_counter_2 <- as.integer(0)
mobility_spend_car_group_counter_3 <- as.integer(0)
mobility_spend_car_group_counter_4 <- as.integer(0)
mobility_spend_car_group_counter_5 <- as.integer(0)
mobility_spend_car_group_counter_6 <- as.integer(0)
mobility_spend_car_group_counter_7 <- as.integer(0)
mobility_spend_car_group_counter_8 <- as.integer(0)
mobility_spend_car_group_counter_9 <- as.integer(0)
mobility_spend_car_group_counter_10 <- as.integer(0)
mobility_spend_car_group_counter_11 <- as.integer(0)
mobility_spend_car_group_counter_12 <- as.integer(0)
mobility_spend_car_group_counter_13 <- as.integer(0)
mobility_spend_car_group_counter_14 <- as.integer(0)
mobility_spend_car_group_counter_15 <- as.integer(0)
mobility_spend_car_group_counter_16 <- as.integer(0)
mobility_spend_car_group_counter_17 <- as.integer(0)
mobility_spend_car_group_counter_18 <- as.integer(0)
mobility_spend_car_group_counter_19 <- as.integer(0)
mobility_spend_car_group_counter_20 <- as.integer(0)
mobility_spend_car_group_counter_21 <- as.integer(0)
mobility_spend_car_group_counter_22 <- as.integer(0)
mobility_spend_car_group_counter_23 <- as.integer(0)
mobility_spend_car_group_counter_24 <- as.integer(0)
mobility_spend_car_group_counter_25 <- as.integer(0)
mobility_spend_car_group_counter_26 <- as.integer(0)
mobility_spend_car_group_counter_27 <- as.integer(0)
mobility_spend_car_group_counter_28 <- as.integer(0)
mobility_spend_car_group_counter_29 <- as.integer(0)
mobility_spend_car_group_counter_30 <- as.integer(0)
mobility_spend_car_group_counter_31 <- as.integer(0)
mobility_spend_car_group_counter_32 <- as.integer(0)
mobility_spend_car_group_counter_33 <- as.integer(0)
mobility_spend_car_group_counter_34 <- as.integer(0)
mobility_spend_car_group_counter_35 <- as.integer(0)
mobility_spend_car_group_counter_36 <- as.integer(0)
mobility_spend_car_group_counter_37 <- as.integer(0)
mobility_spend_car_group_counter_38 <- as.integer(0)
mobility_spend_car_group_counter_39 <- as.integer(0)
mobility_spend_car_group_counter_40 <- as.integer(0)
mobility_spend_car_group_counter_41 <- as.integer(0)
mobility_spend_car_group_counter_42 <- as.integer(0)
mobility_spend_car_group_counter_43 <- as.integer(0)
mobility_spend_car_group_counter_44 <- as.integer(0)
mobility_spend_car_group_counter_45 <- as.integer(0)
mobility_spend_car_group_counter_46 <- as.integer(0)
mobility_spend_car_group_counter_47 <- as.integer(0)
mobility_spend_car_group_counter_48 <- as.integer(0)
mobility_spend_car_group_counter_49 <- as.integer(0)
mobility_spend_car_group_counter_50 <- as.integer(0)
mobility_spend_car_group_counter_51 <- as.integer(0)
mobility_spend_car_group_counter_52 <- as.integer(0)
mobility_spend_car_group_counter_53 <- as.integer(0)
mobility_spend_car_group_counter_54 <- as.integer(0)
mobility_spend_car_group_counter_55 <- as.integer(0)
mobility_spend_car_group_counter_56 <- as.integer(0)
mobility_spend_car_group_counter_57 <- as.integer(0)
mobility_spend_car_group_counter_58 <- as.integer(0)
mobility_spend_car_group_counter_59 <- as.integer(0)
mobility_spend_car_group_counter_60 <- as.integer(0)
mobility_spend_car_group_counter_61 <- as.integer(0)
mobility_spend_car_group_counter_62 <- as.integer(0)
mobility_spend_car_group_counter_63 <- as.integer(0)
mobility_spend_car_group_counter_64 <- as.integer(0)
mobility_spend_car_group_counter_65 <- as.integer(0)
mobility_spend_car_group_counter_66 <- as.integer(0)
mobility_spend_car_group_counter_67 <- as.integer(0)
mobility_spend_car_group_counter_68 <- as.integer(0)
mobility_spend_car_group_counter_69 <- as.integer(0)
mobility_spend_car_group_counter_70 <- as.integer(0)
mobility_spend_car_group_counter_71 <- as.integer(0)
mobility_spend_car_group_counter_72 <- as.integer(0)
mobility_spend_car_group_counter_73 <- as.integer(0)
mobility_spend_car_group_counter_74 <- as.integer(0)
mobility_spend_car_group_counter_75 <- as.integer(0)
mobility_spend_car_group_counter_76 <- as.integer(0)
mobility_spend_car_group_counter_77 <- as.integer(0)
mobility_spend_car_group_counter_78 <- as.integer(0)
mobility_spend_car_group_counter_79 <- as.integer(0)
mobility_spend_car_group_counter_80 <- as.integer(0)
mobility_spend_car_group_counter_81 <- as.integer(0)
mobility_spend_car_group_counter_82 <- as.integer(0)
mobility_spend_car_group_counter_83 <- as.integer(0)
mobility_spend_car_group_counter_84 <- as.integer(0)
mobility_spend_car_group_counter_85 <- as.integer(0)
mobility_spend_car_group_counter_86 <- as.integer(0)
mobility_spend_car_group_counter_87 <- as.integer(0)
mobility_spend_car_group_counter_88 <- as.integer(0)
mobility_spend_car_group_counter_89 <- as.integer(0)
mobility_spend_car_group_counter_90 <- as.integer(0)
mobility_spend_car_group_counter_91 <- as.integer(0)
mobility_spend_car_group_counter_92 <- as.integer(0)
mobility_spend_car_group_counter_93 <- as.integer(0)
mobility_spend_car_group_counter_94 <- as.integer(0)
mobility_spend_car_group_counter_95 <- as.integer(0)
mobility_spend_car_group_counter_96 <- as.integer(0)
mobility_spend_car_group_counter_97 <- as.integer(0)
mobility_spend_car_group_counter_98 <- as.integer(0)
mobility_spend_car_group_counter_99 <- as.integer(0)
mobility_spend_car_group_counter_100 <- as.integer(0)
mobility_spend_car_group_counter_101 <- as.integer(0)


# counting occurences for each public transport group
for (i in 1:n_no_soft_launch_1){
  if (d_noSL1$`Q18_PT-spend`[i] == 1) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_1 <- 1 + mobility_spend_pt_group_counter_1
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_1 <- 1 + mobility_spend_pt_group_counter_1
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 2) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_1 <- 1 + mobility_spend_pt_group_counter_1
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_2 <- 1 + mobility_spend_pt_group_counter_2
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 3) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_1 <- 1 + mobility_spend_pt_group_counter_1
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_3 <- 1 + mobility_spend_pt_group_counter_3
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 4) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_1 <- 1 + mobility_spend_pt_group_counter_1
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_4 <- 1 + mobility_spend_pt_group_counter_4
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 5) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_1 <- 1 + mobility_spend_pt_group_counter_1
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_5 <- 1 + mobility_spend_pt_group_counter_5
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 6) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_1 <- 1 + mobility_spend_pt_group_counter_1
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_6 <- 1 + mobility_spend_pt_group_counter_6
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 7) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_1 <- 1 + mobility_spend_pt_group_counter_1
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_7 <- 1 + mobility_spend_pt_group_counter_7
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 8) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_1 <- 1 + mobility_spend_pt_group_counter_1
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_8 <- 1 + mobility_spend_pt_group_counter_8
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 9) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_1 <- 1 + mobility_spend_pt_group_counter_1
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_9 <- 1 + mobility_spend_pt_group_counter_9
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 10) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_1 <- 1 + mobility_spend_pt_group_counter_1
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_10 <- 1 + mobility_spend_pt_group_counter_10
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 11) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_1 <- 1 + mobility_spend_pt_group_counter_1
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_11 <- 1 + mobility_spend_pt_group_counter_11
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 12) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_1 <- 1 + mobility_spend_pt_group_counter_1
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_12 <- 1 + mobility_spend_pt_group_counter_12
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 13) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_2 <- 1 + mobility_spend_pt_group_counter_2
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_13 <- 1 + mobility_spend_pt_group_counter_13
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 14) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_2 <- 1 + mobility_spend_pt_group_counter_2
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_14 <- 1 + mobility_spend_pt_group_counter_14
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 15) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_2 <- 1 + mobility_spend_pt_group_counter_2
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_15 <- 1 + mobility_spend_pt_group_counter_15
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 16) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_2 <- 1 + mobility_spend_pt_group_counter_2
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_16 <- 1 + mobility_spend_pt_group_counter_16
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 17) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_2 <- 1 + mobility_spend_pt_group_counter_2
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_17 <- 1 + mobility_spend_pt_group_counter_17
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 18) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_2 <- 1 + mobility_spend_pt_group_counter_2
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_18 <- 1 + mobility_spend_pt_group_counter_18
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 19) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_2 <- 1 + mobility_spend_pt_group_counter_2
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_19 <- 1 + mobility_spend_pt_group_counter_19
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 20) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_2 <- 1 + mobility_spend_pt_group_counter_2
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_20 <- 1 + mobility_spend_pt_group_counter_20
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 21) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_2 <- 1 + mobility_spend_pt_group_counter_2
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_21 <- 1 + mobility_spend_pt_group_counter_21
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 22) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_2 <- 1 + mobility_spend_pt_group_counter_2
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_22 <- 1 + mobility_spend_pt_group_counter_22
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 23) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_2 <- 1 + mobility_spend_pt_group_counter_2
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_23 <- 1 + mobility_spend_pt_group_counter_23
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 24) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_2 <- 1 + mobility_spend_pt_group_counter_2
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_24 <- 1 + mobility_spend_pt_group_counter_24
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 25) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_3 <- 1 + mobility_spend_pt_group_counter_3
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_25 <- 1 + mobility_spend_pt_group_counter_25
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 26) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_3 <- 1 + mobility_spend_pt_group_counter_3
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_26 <- 1 + mobility_spend_pt_group_counter_26
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 27) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_3 <- 1 + mobility_spend_pt_group_counter_3
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_27 <- 1 + mobility_spend_pt_group_counter_27
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 28) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_3 <- 1 + mobility_spend_pt_group_counter_3
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_28 <- 1 + mobility_spend_pt_group_counter_28
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 29) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_3 <- 1 + mobility_spend_pt_group_counter_3
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_29 <- 1 + mobility_spend_pt_group_counter_29
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 30) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_3 <- 1 + mobility_spend_pt_group_counter_3
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_30 <- 1 + mobility_spend_pt_group_counter_30
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 31) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_3 <- 1 + mobility_spend_pt_group_counter_3
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_31 <- 1 + mobility_spend_pt_group_counter_31
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 32) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_3 <- 1 + mobility_spend_pt_group_counter_3
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_32 <- 1 + mobility_spend_pt_group_counter_32
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 33) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_3 <- 1 + mobility_spend_pt_group_counter_3
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_33 <- 1 + mobility_spend_pt_group_counter_33
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 34) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_3 <- 1 + mobility_spend_pt_group_counter_3
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_34 <- 1 + mobility_spend_pt_group_counter_34
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 35) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_3 <- 1 + mobility_spend_pt_group_counter_3
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_35 <- 1 + mobility_spend_pt_group_counter_35
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 36) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_3 <- 1 + mobility_spend_pt_group_counter_3
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_36 <- 1 + mobility_spend_pt_group_counter_36
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 37) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_4 <- 1 + mobility_spend_pt_group_counter_4
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_37 <- 1 + mobility_spend_pt_group_counter_37
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 38) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_4 <- 1 + mobility_spend_pt_group_counter_4
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_38 <- 1 + mobility_spend_pt_group_counter_38
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 39) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_4 <- 1 + mobility_spend_pt_group_counter_4
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_39 <- 1 + mobility_spend_pt_group_counter_39
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 40) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_4 <- 1 + mobility_spend_pt_group_counter_4
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_40 <- 1 + mobility_spend_pt_group_counter_40
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 41) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_4 <- 1 + mobility_spend_pt_group_counter_4
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_41 <- 1 + mobility_spend_pt_group_counter_41
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 42) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_4 <- 1 + mobility_spend_pt_group_counter_4
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_42 <- 1 + mobility_spend_pt_group_counter_42
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 43) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_4 <- 1 + mobility_spend_pt_group_counter_4
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_43 <- 1 + mobility_spend_pt_group_counter_43
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 44) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_4 <- 1 + mobility_spend_pt_group_counter_4
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_44 <- 1 + mobility_spend_pt_group_counter_44
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 45) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_4 <- 1 + mobility_spend_pt_group_counter_4
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_45 <- 1 + mobility_spend_pt_group_counter_45
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 46) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_4 <- 1 + mobility_spend_pt_group_counter_4
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_46 <- 1 + mobility_spend_pt_group_counter_46
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 47) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_4 <- 1 + mobility_spend_pt_group_counter_4
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_47 <- 1 + mobility_spend_pt_group_counter_47
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 48) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_4 <- 1 + mobility_spend_pt_group_counter_4
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_48 <- 1 + mobility_spend_pt_group_counter_48
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 49) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_5 <- 1 + mobility_spend_pt_group_counter_5
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_49 <- 1 + mobility_spend_pt_group_counter_49
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 50) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_5 <- 1 + mobility_spend_pt_group_counter_5
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_50 <- 1 + mobility_spend_pt_group_counter_50
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 51) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_5 <- 1 + mobility_spend_pt_group_counter_5
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_51 <- 1 + mobility_spend_pt_group_counter_51
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 52) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_5 <- 1 + mobility_spend_pt_group_counter_5
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_52 <- 1 + mobility_spend_pt_group_counter_52
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 53) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_5 <- 1 + mobility_spend_pt_group_counter_5
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_53 <- 1 + mobility_spend_pt_group_counter_53
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 54) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_5 <- 1 + mobility_spend_pt_group_counter_5
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_54 <- 1 + mobility_spend_pt_group_counter_54
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 55) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_5 <- 1 + mobility_spend_pt_group_counter_5
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_55 <- 1 + mobility_spend_pt_group_counter_55
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 56) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_5 <- 1 + mobility_spend_pt_group_counter_5
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_56 <- 1 + mobility_spend_pt_group_counter_56
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 57) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_5 <- 1 + mobility_spend_pt_group_counter_5
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_57 <- 1 + mobility_spend_pt_group_counter_57
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 58) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_5 <- 1 + mobility_spend_pt_group_counter_5
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_58 <- 1 + mobility_spend_pt_group_counter_58
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 59) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_5 <- 1 + mobility_spend_pt_group_counter_5
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_59 <- 1 + mobility_spend_pt_group_counter_59
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 60) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_5 <- 1 + mobility_spend_pt_group_counter_5
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_60 <- 1 + mobility_spend_pt_group_counter_60
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 61) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_5 <- 1 + mobility_spend_pt_group_counter_5
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_61 <- 1 + mobility_spend_pt_group_counter_61
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 62) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_5 <- 1 + mobility_spend_pt_group_counter_5
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_62 <- 1 + mobility_spend_pt_group_counter_62
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 63) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_5 <- 1 + mobility_spend_pt_group_counter_5
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_53 <- 1 + mobility_spend_pt_group_counter_53
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 64) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_5 <- 1 + mobility_spend_pt_group_counter_5
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_54 <- 1 + mobility_spend_pt_group_counter_54
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 65) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_5 <- 1 + mobility_spend_pt_group_counter_5
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_55 <- 1 + mobility_spend_pt_group_counter_55
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 66) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_5 <- 1 + mobility_spend_pt_group_counter_5
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_56 <- 1 + mobility_spend_pt_group_counter_56
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 67) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_5 <- 1 + mobility_spend_pt_group_counter_5
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_57 <- 1 + mobility_spend_pt_group_counter_57
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 68) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_5 <- 1 + mobility_spend_pt_group_counter_5
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_58 <- 1 + mobility_spend_pt_group_counter_58
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 69) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_5 <- 1 + mobility_spend_pt_group_counter_5
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_59 <- 1 + mobility_spend_pt_group_counter_59
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 70) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_5 <- 1 + mobility_spend_pt_group_counter_5
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_60 <- 1 + mobility_spend_pt_group_counter_60
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 71) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_6 <- 1 + mobility_spend_pt_group_counter_6
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_61 <- 1 + mobility_spend_pt_group_counter_61
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 72) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_6 <- 1 + mobility_spend_pt_group_counter_6
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_62 <- 1 + mobility_spend_pt_group_counter_62
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 73) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_6 <- 1 + mobility_spend_pt_group_counter_6
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_63 <- 1 + mobility_spend_pt_group_counter_63
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 74) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_6 <- 1 + mobility_spend_pt_group_counter_6
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_64 <- 1 + mobility_spend_pt_group_counter_64
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 75) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_6 <- 1 + mobility_spend_pt_group_counter_6
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_65 <- 1 + mobility_spend_pt_group_counter_65
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 76) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_6 <- 1 + mobility_spend_pt_group_counter_6
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_66 <- 1 + mobility_spend_pt_group_counter_66
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 77) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_6 <- 1 + mobility_spend_pt_group_counter_6
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_67 <- 1 + mobility_spend_pt_group_counter_67
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 78) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_6 <- 1 + mobility_spend_pt_group_counter_6
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_68 <- 1 + mobility_spend_pt_group_counter_68
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 79) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_6 <- 1 + mobility_spend_pt_group_counter_6
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_69 <- 1 + mobility_spend_pt_group_counter_69
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 80) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_6 <- 1 + mobility_spend_pt_group_counter_6
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_70 <- 1 + mobility_spend_pt_group_counter_70
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 81) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_6 <- 1 + mobility_spend_pt_group_counter_6
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_71 <- 1 + mobility_spend_pt_group_counter_71
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 82) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_6 <- 1 + mobility_spend_pt_group_counter_6
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_72 <- 1 + mobility_spend_pt_group_counter_72
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 83) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_7 <- 1 + mobility_spend_pt_group_counter_7
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_73 <- 1 + mobility_spend_pt_group_counter_73
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 84) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_7 <- 1 + mobility_spend_pt_group_counter_7
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_74 <- 1 + mobility_spend_pt_group_counter_74
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 85) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_7 <- 1 + mobility_spend_pt_group_counter_7
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_75 <- 1 + mobility_spend_pt_group_counter_75
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 86) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_7 <- 1 + mobility_spend_pt_group_counter_7
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_76 <- 1 + mobility_spend_pt_group_counter_76
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 87) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_7 <- 1 + mobility_spend_pt_group_counter_7
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_77 <- 1 + mobility_spend_pt_group_counter_77
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 88) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_7 <- 1 + mobility_spend_pt_group_counter_7
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_78 <- 1 + mobility_spend_pt_group_counter_78
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 89) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_7 <- 1 + mobility_spend_pt_group_counter_7
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_79 <- 1 + mobility_spend_pt_group_counter_79
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 90) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_7 <- 1 + mobility_spend_pt_group_counter_7
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_80 <- 1 + mobility_spend_pt_group_counter_80
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 91) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_7 <- 1 + mobility_spend_pt_group_counter_7
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_81 <- 1 + mobility_spend_pt_group_counter_81
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 92) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_7 <- 1 + mobility_spend_pt_group_counter_7
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_82 <- 1 + mobility_spend_pt_group_counter_82
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 93) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_7 <- 1 + mobility_spend_pt_group_counter_7
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_83 <- 1 + mobility_spend_pt_group_counter_83
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 94) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_7 <- 1 + mobility_spend_pt_group_counter_7
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_84 <- 1 + mobility_spend_pt_group_counter_84
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 95) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_8 <- 1 + mobility_spend_pt_group_counter_8
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_85 <- 1 + mobility_spend_pt_group_counter_85
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 96) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_8 <- 1 + mobility_spend_pt_group_counter_8
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_86 <- 1 + mobility_spend_pt_group_counter_86
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 97) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_8 <- 1 + mobility_spend_pt_group_counter_8
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_87 <- 1 + mobility_spend_pt_group_counter_87
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 98) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_8 <- 1 + mobility_spend_pt_group_counter_8
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_88 <- 1 + mobility_spend_pt_group_counter_88
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 99) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_8 <- 1 + mobility_spend_pt_group_counter_8
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_89 <- 1 + mobility_spend_pt_group_counter_89
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 100) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_8 <- 1 + mobility_spend_pt_group_counter_8
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_90 <- 1 + mobility_spend_pt_group_counter_90
    }
  }

  if (d_noSL1$`Q18_PT-spend`[i] == 101) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_8 <- 1 + mobility_spend_pt_group_counter_8
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_91 <- 1 + mobility_spend_pt_group_counter_91
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 102) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_8 <- 1 + mobility_spend_pt_group_counter_8
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_92 <- 1 + mobility_spend_pt_group_counter_92
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 103) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_8 <- 1 + mobility_spend_pt_group_counter_8
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_93 <- 1 + mobility_spend_pt_group_counter_93
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 104) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_8 <- 1 + mobility_spend_pt_group_counter_8
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_94 <- 1 + mobility_spend_pt_group_counter_94
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 105) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_8 <- 1 + mobility_spend_pt_group_counter_8
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_95 <- 1 + mobility_spend_pt_group_counter_95
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 106) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_8 <- 1 + mobility_spend_pt_group_counter_8
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_96 <- 1 + mobility_spend_pt_group_counter_96
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 107) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_9 <- 1 + mobility_spend_pt_group_counter_9
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_97 <- 1 + mobility_spend_pt_group_counter_97
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 108) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_9 <- 1 + mobility_spend_pt_group_counter_9
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_98 <- 1 + mobility_spend_pt_group_counter_98
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 109) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_9 <- 1 + mobility_spend_pt_group_counter_9
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_99 <- 1 + mobility_spend_pt_group_counter_99
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 110) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_9 <- 1 + mobility_spend_pt_group_counter_9
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_100 <- 1 + mobility_spend_pt_group_counter_100
    }
  }
  
  if (d_noSL1$`Q18_PT-spend`[i] == 111) {
    if(d_noSL1$`Q19_PT-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_pt_group_counter_9 <- 1 + mobility_spend_pt_group_counter_9
    }
    if(d_noSL1$`Q19_PT-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_pt_group_counter_101 <- 1 + mobility_spend_pt_group_counter_101
    }
  }
  
}

# counting occurences for each car mobility group
for (i in 1:n_no_soft_launch_1){
  if (d_noSL1$`Q21_car-spend`[i] == 1) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_1 <- 1 + mobility_spend_car_group_counter_1
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_1 <- 1 + mobility_spend_car_group_counter_1
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 2) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_1 <- 1 + mobility_spend_car_group_counter_1
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_2 <- 1 + mobility_spend_car_group_counter_2
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 3) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_1 <- 1 + mobility_spend_car_group_counter_1
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_3 <- 1 + mobility_spend_car_group_counter_3
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 4) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_1 <- 1 + mobility_spend_car_group_counter_1
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_4 <- 1 + mobility_spend_car_group_counter_4
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 5) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_1 <- 1 + mobility_spend_car_group_counter_1
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_5 <- 1 + mobility_spend_car_group_counter_5
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 6) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_1 <- 1 + mobility_spend_car_group_counter_1
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_6 <- 1 + mobility_spend_car_group_counter_6
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 7) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_1 <- 1 + mobility_spend_car_group_counter_1
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_7 <- 1 + mobility_spend_car_group_counter_7
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 8) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_1 <- 1 + mobility_spend_car_group_counter_1
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_8 <- 1 + mobility_spend_car_group_counter_8
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 9) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_1 <- 1 + mobility_spend_car_group_counter_1
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_9 <- 1 + mobility_spend_car_group_counter_9
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 10) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_1 <- 1 + mobility_spend_car_group_counter_1
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_10 <- 1 + mobility_spend_car_group_counter_10
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 11) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_1 <- 1 + mobility_spend_car_group_counter_1
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_11 <- 1 + mobility_spend_car_group_counter_11
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 12) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_1 <- 1 + mobility_spend_car_group_counter_1
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_12 <- 1 + mobility_spend_car_group_counter_12
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 13) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_2 <- 1 + mobility_spend_car_group_counter_2
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_13 <- 1 + mobility_spend_car_group_counter_13
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 14) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_2 <- 1 + mobility_spend_car_group_counter_2
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_14 <- 1 + mobility_spend_car_group_counter_14
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 15) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_2 <- 1 + mobility_spend_car_group_counter_2
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_15 <- 1 + mobility_spend_car_group_counter_15
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 16) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_2 <- 1 + mobility_spend_car_group_counter_2
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_16 <- 1 + mobility_spend_car_group_counter_16
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 17) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_2 <- 1 + mobility_spend_car_group_counter_2
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_17 <- 1 + mobility_spend_car_group_counter_17
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 18) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_2 <- 1 + mobility_spend_car_group_counter_2
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_18 <- 1 + mobility_spend_car_group_counter_18
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 19) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_2 <- 1 + mobility_spend_car_group_counter_2
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_19 <- 1 + mobility_spend_car_group_counter_19
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 20) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_2 <- 1 + mobility_spend_car_group_counter_2
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_20 <- 1 + mobility_spend_car_group_counter_20
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 21) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_2 <- 1 + mobility_spend_car_group_counter_2
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_21 <- 1 + mobility_spend_car_group_counter_21
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 22) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_2 <- 1 + mobility_spend_car_group_counter_2
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_22 <- 1 + mobility_spend_car_group_counter_22
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 23) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_2 <- 1 + mobility_spend_car_group_counter_2
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_23 <- 1 + mobility_spend_car_group_counter_23
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 24) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_2 <- 1 + mobility_spend_car_group_counter_2
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_24 <- 1 + mobility_spend_car_group_counter_24
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 25) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_3 <- 1 + mobility_spend_car_group_counter_3
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_25 <- 1 + mobility_spend_car_group_counter_25
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 26) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_3 <- 1 + mobility_spend_car_group_counter_3
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_26 <- 1 + mobility_spend_car_group_counter_26
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 27) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_3 <- 1 + mobility_spend_car_group_counter_3
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_27 <- 1 + mobility_spend_car_group_counter_27
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 28) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_3 <- 1 + mobility_spend_car_group_counter_3
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_28 <- 1 + mobility_spend_car_group_counter_28
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 29) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_3 <- 1 + mobility_spend_car_group_counter_3
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_29 <- 1 + mobility_spend_car_group_counter_29
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 30) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_3 <- 1 + mobility_spend_car_group_counter_3
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_30 <- 1 + mobility_spend_car_group_counter_30
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 31) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_3 <- 1 + mobility_spend_car_group_counter_3
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_31 <- 1 + mobility_spend_car_group_counter_31
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 32) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_3 <- 1 + mobility_spend_car_group_counter_3
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_32 <- 1 + mobility_spend_car_group_counter_32
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 33) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_3 <- 1 + mobility_spend_car_group_counter_3
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_33 <- 1 + mobility_spend_car_group_counter_33
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 34) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_3 <- 1 + mobility_spend_car_group_counter_3
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_34 <- 1 + mobility_spend_car_group_counter_34
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 35) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_3 <- 1 + mobility_spend_car_group_counter_3
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_35 <- 1 + mobility_spend_car_group_counter_35
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 36) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_3 <- 1 + mobility_spend_car_group_counter_3
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_36 <- 1 + mobility_spend_car_group_counter_36
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 37) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_4 <- 1 + mobility_spend_car_group_counter_4
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_37 <- 1 + mobility_spend_car_group_counter_37
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 38) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_4 <- 1 + mobility_spend_car_group_counter_4
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_38 <- 1 + mobility_spend_car_group_counter_38
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 39) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_4 <- 1 + mobility_spend_car_group_counter_4
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_39 <- 1 + mobility_spend_car_group_counter_39
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 40) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_4 <- 1 + mobility_spend_car_group_counter_4
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_40 <- 1 + mobility_spend_car_group_counter_40
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 41) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_4 <- 1 + mobility_spend_car_group_counter_4
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_41 <- 1 + mobility_spend_car_group_counter_41
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 42) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_4 <- 1 + mobility_spend_car_group_counter_4
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_42 <- 1 + mobility_spend_car_group_counter_42
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 43) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_4 <- 1 + mobility_spend_car_group_counter_4
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_43 <- 1 + mobility_spend_car_group_counter_43
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 44) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_4 <- 1 + mobility_spend_car_group_counter_4
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_44 <- 1 + mobility_spend_car_group_counter_44
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 45) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_4 <- 1 + mobility_spend_car_group_counter_4
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_45 <- 1 + mobility_spend_car_group_counter_45
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 46) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_4 <- 1 + mobility_spend_car_group_counter_4
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_46 <- 1 + mobility_spend_car_group_counter_46
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 47) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_4 <- 1 + mobility_spend_car_group_counter_4
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_47 <- 1 + mobility_spend_car_group_counter_47
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 48) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_4 <- 1 + mobility_spend_car_group_counter_4
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_48 <- 1 + mobility_spend_car_group_counter_48
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 49) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_5 <- 1 + mobility_spend_car_group_counter_5
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_49 <- 1 + mobility_spend_car_group_counter_49
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 50) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_5 <- 1 + mobility_spend_car_group_counter_5
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_50 <- 1 + mobility_spend_car_group_counter_50
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 51) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_5 <- 1 + mobility_spend_car_group_counter_5
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_51 <- 1 + mobility_spend_car_group_counter_51
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 52) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_5 <- 1 + mobility_spend_car_group_counter_5
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_52 <- 1 + mobility_spend_car_group_counter_52
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 53) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_5 <- 1 + mobility_spend_car_group_counter_5
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_53 <- 1 + mobility_spend_car_group_counter_53
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 54) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_5 <- 1 + mobility_spend_car_group_counter_5
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_54 <- 1 + mobility_spend_car_group_counter_54
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 55) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_5 <- 1 + mobility_spend_car_group_counter_5
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_55 <- 1 + mobility_spend_car_group_counter_55
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 56) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_5 <- 1 + mobility_spend_car_group_counter_5
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_56 <- 1 + mobility_spend_car_group_counter_56
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 57) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_5 <- 1 + mobility_spend_car_group_counter_5
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_57 <- 1 + mobility_spend_car_group_counter_57
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 58) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_5 <- 1 + mobility_spend_car_group_counter_5
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_58 <- 1 + mobility_spend_car_group_counter_58
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 59) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_5 <- 1 + mobility_spend_car_group_counter_5
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_59 <- 1 + mobility_spend_car_group_counter_59
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 60) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_5 <- 1 + mobility_spend_car_group_counter_5
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_60 <- 1 + mobility_spend_car_group_counter_60
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 61) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_5 <- 1 + mobility_spend_car_group_counter_5
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_61 <- 1 + mobility_spend_car_group_counter_61
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 62) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_5 <- 1 + mobility_spend_car_group_counter_5
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_62 <- 1 + mobility_spend_car_group_counter_62
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 63) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_5 <- 1 + mobility_spend_car_group_counter_5
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_53 <- 1 + mobility_spend_car_group_counter_53
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 64) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_5 <- 1 + mobility_spend_car_group_counter_5
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_54 <- 1 + mobility_spend_car_group_counter_54
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 65) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_5 <- 1 + mobility_spend_car_group_counter_5
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_55 <- 1 + mobility_spend_car_group_counter_55
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 66) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_5 <- 1 + mobility_spend_car_group_counter_5
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_56 <- 1 + mobility_spend_car_group_counter_56
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 67) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_5 <- 1 + mobility_spend_car_group_counter_5
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_57 <- 1 + mobility_spend_car_group_counter_57
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 68) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_5 <- 1 + mobility_spend_car_group_counter_5
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_58 <- 1 + mobility_spend_car_group_counter_58
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 69) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_5 <- 1 + mobility_spend_car_group_counter_5
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_59 <- 1 + mobility_spend_car_group_counter_59
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 70) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_5 <- 1 + mobility_spend_car_group_counter_5
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_60 <- 1 + mobility_spend_car_group_counter_60
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 71) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_6 <- 1 + mobility_spend_car_group_counter_6
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_61 <- 1 + mobility_spend_car_group_counter_61
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 72) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_6 <- 1 + mobility_spend_car_group_counter_6
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_62 <- 1 + mobility_spend_car_group_counter_62
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 73) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_6 <- 1 + mobility_spend_car_group_counter_6
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_63 <- 1 + mobility_spend_car_group_counter_63
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 74) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_6 <- 1 + mobility_spend_car_group_counter_6
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_64 <- 1 + mobility_spend_car_group_counter_64
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 75) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_6 <- 1 + mobility_spend_car_group_counter_6
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_65 <- 1 + mobility_spend_car_group_counter_65
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 76) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_6 <- 1 + mobility_spend_car_group_counter_6
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_66 <- 1 + mobility_spend_car_group_counter_66
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 77) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_6 <- 1 + mobility_spend_car_group_counter_6
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_67 <- 1 + mobility_spend_car_group_counter_67
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 78) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_6 <- 1 + mobility_spend_car_group_counter_6
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_68 <- 1 + mobility_spend_car_group_counter_68
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 79) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_6 <- 1 + mobility_spend_car_group_counter_6
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_69 <- 1 + mobility_spend_car_group_counter_69
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 80) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_6 <- 1 + mobility_spend_car_group_counter_6
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_70 <- 1 + mobility_spend_car_group_counter_70
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 81) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_6 <- 1 + mobility_spend_car_group_counter_6
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_71 <- 1 + mobility_spend_car_group_counter_71
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 82) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_6 <- 1 + mobility_spend_car_group_counter_6
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_72 <- 1 + mobility_spend_car_group_counter_72
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 83) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_7 <- 1 + mobility_spend_car_group_counter_7
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_73 <- 1 + mobility_spend_car_group_counter_73
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 84) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_7 <- 1 + mobility_spend_car_group_counter_7
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_74 <- 1 + mobility_spend_car_group_counter_74
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 85) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_7 <- 1 + mobility_spend_car_group_counter_7
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_75 <- 1 + mobility_spend_car_group_counter_75
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 86) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_7 <- 1 + mobility_spend_car_group_counter_7
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_76 <- 1 + mobility_spend_car_group_counter_76
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 87) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_7 <- 1 + mobility_spend_car_group_counter_7
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_77 <- 1 + mobility_spend_car_group_counter_77
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 88) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_7 <- 1 + mobility_spend_car_group_counter_7
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_78 <- 1 + mobility_spend_car_group_counter_78
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 89) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_7 <- 1 + mobility_spend_car_group_counter_7
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_79 <- 1 + mobility_spend_car_group_counter_79
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 90) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_7 <- 1 + mobility_spend_car_group_counter_7
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_80 <- 1 + mobility_spend_car_group_counter_80
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 91) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_7 <- 1 + mobility_spend_car_group_counter_7
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_81 <- 1 + mobility_spend_car_group_counter_81
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 92) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_7 <- 1 + mobility_spend_car_group_counter_7
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_82 <- 1 + mobility_spend_car_group_counter_82
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 93) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_7 <- 1 + mobility_spend_car_group_counter_7
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_83 <- 1 + mobility_spend_car_group_counter_83
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 94) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_7 <- 1 + mobility_spend_car_group_counter_7
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_84 <- 1 + mobility_spend_car_group_counter_84
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 95) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_8 <- 1 + mobility_spend_car_group_counter_8
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_85 <- 1 + mobility_spend_car_group_counter_85
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 96) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_8 <- 1 + mobility_spend_car_group_counter_8
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_86 <- 1 + mobility_spend_car_group_counter_86
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 97) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_8 <- 1 + mobility_spend_car_group_counter_8
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_87 <- 1 + mobility_spend_car_group_counter_87
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 98) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_8 <- 1 + mobility_spend_car_group_counter_8
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_88 <- 1 + mobility_spend_car_group_counter_88
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 99) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_8 <- 1 + mobility_spend_car_group_counter_8
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_89 <- 1 + mobility_spend_car_group_counter_89
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 100) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_8 <- 1 + mobility_spend_car_group_counter_8
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_90 <- 1 + mobility_spend_car_group_counter_90
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 101) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_8 <- 1 + mobility_spend_car_group_counter_8
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_91 <- 1 + mobility_spend_car_group_counter_91
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 102) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_8 <- 1 + mobility_spend_car_group_counter_8
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_92 <- 1 + mobility_spend_car_group_counter_92
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 103) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_8 <- 1 + mobility_spend_car_group_counter_8
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_93 <- 1 + mobility_spend_car_group_counter_93
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 104) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_8 <- 1 + mobility_spend_car_group_counter_8
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_94 <- 1 + mobility_spend_car_group_counter_94
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 105) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_8 <- 1 + mobility_spend_car_group_counter_8
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_95 <- 1 + mobility_spend_car_group_counter_95
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 106) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_8 <- 1 + mobility_spend_car_group_counter_8
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_96 <- 1 + mobility_spend_car_group_counter_96
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 107) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_9 <- 1 + mobility_spend_car_group_counter_9
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_97 <- 1 + mobility_spend_car_group_counter_97
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 108) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_9 <- 1 + mobility_spend_car_group_counter_9
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_98 <- 1 + mobility_spend_car_group_counter_98
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 109) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_9 <- 1 + mobility_spend_car_group_counter_9
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_99 <- 1 + mobility_spend_car_group_counter_99
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 110) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_9 <- 1 + mobility_spend_car_group_counter_9
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_100 <- 1 + mobility_spend_car_group_counter_100
    }
  }
  
  if (d_noSL1$`Q21_car-spend`[i] == 111) {
    if(d_noSL1$`Q22_car-spend-t`[i] == 1) { # check for yearly spending interval
      mobility_spend_car_group_counter_9 <- 1 + mobility_spend_car_group_counter_9
    }
    if(d_noSL1$`Q22_car-spend-t`[i] == 2) {  # check for monthly spending interval
      mobility_spend_car_group_counter_101 <- 1 + mobility_spend_car_group_counter_101
    }
  }
  
}

  
# writing counts for each group into dataset
d_mobility_spend$`Public transport mobility spending`[1:101] <- c(
  mobility_spend_pt_group_counter_1,
  mobility_spend_pt_group_counter_2,
  mobility_spend_pt_group_counter_3,
  mobility_spend_pt_group_counter_4,
  mobility_spend_pt_group_counter_5,
  mobility_spend_pt_group_counter_6,
  mobility_spend_pt_group_counter_7,
  mobility_spend_pt_group_counter_8,
  mobility_spend_pt_group_counter_9,
  mobility_spend_pt_group_counter_10,
  mobility_spend_pt_group_counter_11,
  mobility_spend_pt_group_counter_12,
  mobility_spend_pt_group_counter_13,
  mobility_spend_pt_group_counter_14,
  mobility_spend_pt_group_counter_15,
  mobility_spend_pt_group_counter_16,
  mobility_spend_pt_group_counter_17,
  mobility_spend_pt_group_counter_18,
  mobility_spend_pt_group_counter_19,
  mobility_spend_pt_group_counter_20,
  mobility_spend_pt_group_counter_21,
  mobility_spend_pt_group_counter_22,
  mobility_spend_pt_group_counter_23,
  mobility_spend_pt_group_counter_24,
  mobility_spend_pt_group_counter_25,
  mobility_spend_pt_group_counter_26,
  mobility_spend_pt_group_counter_27,
  mobility_spend_pt_group_counter_28,
  mobility_spend_pt_group_counter_29,
  mobility_spend_pt_group_counter_30,
  mobility_spend_pt_group_counter_31,
  mobility_spend_pt_group_counter_32,
  mobility_spend_pt_group_counter_33,
  mobility_spend_pt_group_counter_34,
  mobility_spend_pt_group_counter_35,
  mobility_spend_pt_group_counter_36,
  mobility_spend_pt_group_counter_37,
  mobility_spend_pt_group_counter_38,
  mobility_spend_pt_group_counter_39,
  mobility_spend_pt_group_counter_40,
  mobility_spend_pt_group_counter_41,
  mobility_spend_pt_group_counter_42,
  mobility_spend_pt_group_counter_43,
  mobility_spend_pt_group_counter_44,
  mobility_spend_pt_group_counter_45,
  mobility_spend_pt_group_counter_46,
  mobility_spend_pt_group_counter_47,
  mobility_spend_pt_group_counter_48,
  mobility_spend_pt_group_counter_49,
  mobility_spend_pt_group_counter_50,
  mobility_spend_pt_group_counter_51,
  mobility_spend_pt_group_counter_52,
  mobility_spend_pt_group_counter_53,
  mobility_spend_pt_group_counter_54,
  mobility_spend_pt_group_counter_55,
  mobility_spend_pt_group_counter_56,
  mobility_spend_pt_group_counter_57,
  mobility_spend_pt_group_counter_58,
  mobility_spend_pt_group_counter_59,
  mobility_spend_pt_group_counter_60,
  mobility_spend_pt_group_counter_61,
  mobility_spend_pt_group_counter_62,
  mobility_spend_pt_group_counter_63,
  mobility_spend_pt_group_counter_64,
  mobility_spend_pt_group_counter_65,
  mobility_spend_pt_group_counter_66,
  mobility_spend_pt_group_counter_67,
  mobility_spend_pt_group_counter_68,
  mobility_spend_pt_group_counter_69,
  mobility_spend_pt_group_counter_70,
  mobility_spend_pt_group_counter_71,
  mobility_spend_pt_group_counter_72,
  mobility_spend_pt_group_counter_73,
  mobility_spend_pt_group_counter_74,
  mobility_spend_pt_group_counter_75,
  mobility_spend_pt_group_counter_76,
  mobility_spend_pt_group_counter_77,
  mobility_spend_pt_group_counter_78,
  mobility_spend_pt_group_counter_79,
  mobility_spend_pt_group_counter_80,
  mobility_spend_pt_group_counter_81,
  mobility_spend_pt_group_counter_82,
  mobility_spend_pt_group_counter_83,
  mobility_spend_pt_group_counter_84,
  mobility_spend_pt_group_counter_85,
  mobility_spend_pt_group_counter_86,
  mobility_spend_pt_group_counter_87,
  mobility_spend_pt_group_counter_88,
  mobility_spend_pt_group_counter_89,
  mobility_spend_pt_group_counter_90,
  mobility_spend_pt_group_counter_91,
  mobility_spend_pt_group_counter_92,
  mobility_spend_pt_group_counter_93,
  mobility_spend_pt_group_counter_94,
  mobility_spend_pt_group_counter_95,
  mobility_spend_pt_group_counter_96,
  mobility_spend_pt_group_counter_97,
  mobility_spend_pt_group_counter_98,
  mobility_spend_pt_group_counter_99,
  mobility_spend_pt_group_counter_100,
  mobility_spend_pt_group_counter_101
)
  
d_mobility_spend$`Car mobility spending`[1:101] <- c(
  mobility_spend_car_group_counter_1,
  mobility_spend_car_group_counter_2,
  mobility_spend_car_group_counter_3,
  mobility_spend_car_group_counter_4,
  mobility_spend_car_group_counter_5,
  mobility_spend_car_group_counter_6,
  mobility_spend_car_group_counter_7,
  mobility_spend_car_group_counter_8,
  mobility_spend_car_group_counter_9,
  mobility_spend_car_group_counter_10,
  mobility_spend_car_group_counter_11,
  mobility_spend_car_group_counter_12,
  mobility_spend_car_group_counter_13,
  mobility_spend_car_group_counter_14,
  mobility_spend_car_group_counter_15,
  mobility_spend_car_group_counter_16,
  mobility_spend_car_group_counter_17,
  mobility_spend_car_group_counter_18,
  mobility_spend_car_group_counter_19,
  mobility_spend_car_group_counter_20,
  mobility_spend_car_group_counter_21,
  mobility_spend_car_group_counter_22,
  mobility_spend_car_group_counter_23,
  mobility_spend_car_group_counter_24,
  mobility_spend_car_group_counter_25,
  mobility_spend_car_group_counter_26,
  mobility_spend_car_group_counter_27,
  mobility_spend_car_group_counter_28,
  mobility_spend_car_group_counter_29,
  mobility_spend_car_group_counter_30,
  mobility_spend_car_group_counter_31,
  mobility_spend_car_group_counter_32,
  mobility_spend_car_group_counter_33,
  mobility_spend_car_group_counter_34,
  mobility_spend_car_group_counter_35,
  mobility_spend_car_group_counter_36,
  mobility_spend_car_group_counter_37,
  mobility_spend_car_group_counter_38,
  mobility_spend_car_group_counter_39,
  mobility_spend_car_group_counter_40,
  mobility_spend_car_group_counter_41,
  mobility_spend_car_group_counter_42,
  mobility_spend_car_group_counter_43,
  mobility_spend_car_group_counter_44,
  mobility_spend_car_group_counter_45,
  mobility_spend_car_group_counter_46,
  mobility_spend_car_group_counter_47,
  mobility_spend_car_group_counter_48,
  mobility_spend_car_group_counter_49,
  mobility_spend_car_group_counter_50,
  mobility_spend_car_group_counter_51,
  mobility_spend_car_group_counter_52,
  mobility_spend_car_group_counter_53,
  mobility_spend_car_group_counter_54,
  mobility_spend_car_group_counter_55,
  mobility_spend_car_group_counter_56,
  mobility_spend_car_group_counter_57,
  mobility_spend_car_group_counter_58,
  mobility_spend_car_group_counter_59,
  mobility_spend_car_group_counter_60,
  mobility_spend_car_group_counter_61,
  mobility_spend_car_group_counter_62,
  mobility_spend_car_group_counter_63,
  mobility_spend_car_group_counter_64,
  mobility_spend_car_group_counter_65,
  mobility_spend_car_group_counter_66,
  mobility_spend_car_group_counter_67,
  mobility_spend_car_group_counter_68,
  mobility_spend_car_group_counter_69,
  mobility_spend_car_group_counter_70,
  mobility_spend_car_group_counter_71,
  mobility_spend_car_group_counter_72,
  mobility_spend_car_group_counter_73,
  mobility_spend_car_group_counter_74,
  mobility_spend_car_group_counter_75,
  mobility_spend_car_group_counter_76,
  mobility_spend_car_group_counter_77,
  mobility_spend_car_group_counter_78,
  mobility_spend_car_group_counter_79,
  mobility_spend_car_group_counter_80,
  mobility_spend_car_group_counter_81,
  mobility_spend_car_group_counter_82,
  mobility_spend_car_group_counter_83,
  mobility_spend_car_group_counter_84,
  mobility_spend_car_group_counter_85,
  mobility_spend_car_group_counter_86,
  mobility_spend_car_group_counter_87,
  mobility_spend_car_group_counter_88,
  mobility_spend_car_group_counter_89,
  mobility_spend_car_group_counter_90,
  mobility_spend_car_group_counter_91,
  mobility_spend_car_group_counter_92,
  mobility_spend_car_group_counter_93,
  mobility_spend_car_group_counter_94,
  mobility_spend_car_group_counter_95,
  mobility_spend_car_group_counter_96,
  mobility_spend_car_group_counter_97,
  mobility_spend_car_group_counter_98,
  mobility_spend_car_group_counter_99,
  mobility_spend_car_group_counter_100,
  mobility_spend_car_group_counter_101
)

# Percentage of total calculation
d_mobility_spend <- mutate(d_mobility_spend, "Percentage of public transport mobility spending" = d_mobility_spend$`Public transport mobility spending` / sum(d_mobility_spend$`Public transport mobility spending`))
d_mobility_spend <- mutate(d_mobility_spend, "Percentage of Ccr mobility spending" = d_mobility_spend$`Car mobility spending` / sum(d_mobility_spend$`Car mobility spending`))


# save output as csv file
write.csv(d_mobility_spend, file = "output/d_mobility_spend.csv", row.names = FALSE)

# variable cleanup
rm(mobility_spend_group_ID,
   mobility_spend_group_ranges,
   mobility_spend_pt_group_counter_1,
   mobility_spend_pt_group_counter_2,
   mobility_spend_pt_group_counter_3,
   mobility_spend_pt_group_counter_4,
   mobility_spend_pt_group_counter_5,
   mobility_spend_pt_group_counter_6,
   mobility_spend_pt_group_counter_7,
   mobility_spend_pt_group_counter_8,
   mobility_spend_pt_group_counter_9,
   mobility_spend_pt_group_counter_10,
   mobility_spend_pt_group_counter_11,
   mobility_spend_pt_group_counter_12,
   mobility_spend_pt_group_counter_13,
   mobility_spend_pt_group_counter_14,
   mobility_spend_pt_group_counter_15,
   mobility_spend_pt_group_counter_16,
   mobility_spend_pt_group_counter_17,
   mobility_spend_pt_group_counter_18,
   mobility_spend_pt_group_counter_19,
   mobility_spend_pt_group_counter_20,
   mobility_spend_pt_group_counter_21,
   mobility_spend_pt_group_counter_22,
   mobility_spend_pt_group_counter_23,
   mobility_spend_pt_group_counter_24,
   mobility_spend_pt_group_counter_25,
   mobility_spend_pt_group_counter_26,
   mobility_spend_pt_group_counter_27,
   mobility_spend_pt_group_counter_28,
   mobility_spend_pt_group_counter_29,
   mobility_spend_pt_group_counter_30,
   mobility_spend_pt_group_counter_31,
   mobility_spend_pt_group_counter_32,
   mobility_spend_pt_group_counter_33,
   mobility_spend_pt_group_counter_34,
   mobility_spend_pt_group_counter_35,
   mobility_spend_pt_group_counter_36,
   mobility_spend_pt_group_counter_37,
   mobility_spend_pt_group_counter_38,
   mobility_spend_pt_group_counter_39,
   mobility_spend_pt_group_counter_40,
   mobility_spend_pt_group_counter_41,
   mobility_spend_pt_group_counter_42,
   mobility_spend_pt_group_counter_43,
   mobility_spend_pt_group_counter_44,
   mobility_spend_pt_group_counter_45,
   mobility_spend_pt_group_counter_46,
   mobility_spend_pt_group_counter_47,
   mobility_spend_pt_group_counter_48,
   mobility_spend_pt_group_counter_49,
   mobility_spend_pt_group_counter_50,
   mobility_spend_pt_group_counter_51,
   mobility_spend_pt_group_counter_52,
   mobility_spend_pt_group_counter_53,
   mobility_spend_pt_group_counter_54,
   mobility_spend_pt_group_counter_55,
   mobility_spend_pt_group_counter_56,
   mobility_spend_pt_group_counter_57,
   mobility_spend_pt_group_counter_58,
   mobility_spend_pt_group_counter_59,
   mobility_spend_pt_group_counter_60,
   mobility_spend_pt_group_counter_61,
   mobility_spend_pt_group_counter_62,
   mobility_spend_pt_group_counter_63,
   mobility_spend_pt_group_counter_64,
   mobility_spend_pt_group_counter_65,
   mobility_spend_pt_group_counter_66,
   mobility_spend_pt_group_counter_67,
   mobility_spend_pt_group_counter_68,
   mobility_spend_pt_group_counter_69,
   mobility_spend_pt_group_counter_70,
   mobility_spend_pt_group_counter_71,
   mobility_spend_pt_group_counter_72,
   mobility_spend_pt_group_counter_73,
   mobility_spend_pt_group_counter_74,
   mobility_spend_pt_group_counter_75,
   mobility_spend_pt_group_counter_76,
   mobility_spend_pt_group_counter_77,
   mobility_spend_pt_group_counter_78,
   mobility_spend_pt_group_counter_79,
   mobility_spend_pt_group_counter_80,
   mobility_spend_pt_group_counter_81,
   mobility_spend_pt_group_counter_82,
   mobility_spend_pt_group_counter_83,
   mobility_spend_pt_group_counter_84,
   mobility_spend_pt_group_counter_85,
   mobility_spend_pt_group_counter_86,
   mobility_spend_pt_group_counter_87,
   mobility_spend_pt_group_counter_88,
   mobility_spend_pt_group_counter_89,
   mobility_spend_pt_group_counter_90,
   mobility_spend_pt_group_counter_91,
   mobility_spend_pt_group_counter_92,
   mobility_spend_pt_group_counter_93,
   mobility_spend_pt_group_counter_94,
   mobility_spend_pt_group_counter_95,
   mobility_spend_pt_group_counter_96,
   mobility_spend_pt_group_counter_97,
   mobility_spend_pt_group_counter_98,
   mobility_spend_pt_group_counter_99,
   mobility_spend_pt_group_counter_100,
   mobility_spend_pt_group_counter_101,
   mobility_spend_car_group_counter_1,
   mobility_spend_car_group_counter_2,
   mobility_spend_car_group_counter_3,
   mobility_spend_car_group_counter_4,
   mobility_spend_car_group_counter_5,
   mobility_spend_car_group_counter_6,
   mobility_spend_car_group_counter_7,
   mobility_spend_car_group_counter_8,
   mobility_spend_car_group_counter_9,
   mobility_spend_car_group_counter_10,
   mobility_spend_car_group_counter_11,
   mobility_spend_car_group_counter_12,
   mobility_spend_car_group_counter_13,
   mobility_spend_car_group_counter_14,
   mobility_spend_car_group_counter_15,
   mobility_spend_car_group_counter_16,
   mobility_spend_car_group_counter_17,
   mobility_spend_car_group_counter_18,
   mobility_spend_car_group_counter_19,
   mobility_spend_car_group_counter_20,
   mobility_spend_car_group_counter_21,
   mobility_spend_car_group_counter_22,
   mobility_spend_car_group_counter_23,
   mobility_spend_car_group_counter_24,
   mobility_spend_car_group_counter_25,
   mobility_spend_car_group_counter_26,
   mobility_spend_car_group_counter_27,
   mobility_spend_car_group_counter_28,
   mobility_spend_car_group_counter_29,
   mobility_spend_car_group_counter_30,
   mobility_spend_car_group_counter_31,
   mobility_spend_car_group_counter_32,
   mobility_spend_car_group_counter_33,
   mobility_spend_car_group_counter_34,
   mobility_spend_car_group_counter_35,
   mobility_spend_car_group_counter_36,
   mobility_spend_car_group_counter_37,
   mobility_spend_car_group_counter_38,
   mobility_spend_car_group_counter_39,
   mobility_spend_car_group_counter_40,
   mobility_spend_car_group_counter_41,
   mobility_spend_car_group_counter_42,
   mobility_spend_car_group_counter_43,
   mobility_spend_car_group_counter_44,
   mobility_spend_car_group_counter_45,
   mobility_spend_car_group_counter_46,
   mobility_spend_car_group_counter_47,
   mobility_spend_car_group_counter_48,
   mobility_spend_car_group_counter_49,
   mobility_spend_car_group_counter_50,
   mobility_spend_car_group_counter_51,
   mobility_spend_car_group_counter_52,
   mobility_spend_car_group_counter_53,
   mobility_spend_car_group_counter_54,
   mobility_spend_car_group_counter_55,
   mobility_spend_car_group_counter_56,
   mobility_spend_car_group_counter_57,
   mobility_spend_car_group_counter_58,
   mobility_spend_car_group_counter_59,
   mobility_spend_car_group_counter_60,
   mobility_spend_car_group_counter_61,
   mobility_spend_car_group_counter_62,
   mobility_spend_car_group_counter_63,
   mobility_spend_car_group_counter_64,
   mobility_spend_car_group_counter_65,
   mobility_spend_car_group_counter_66,
   mobility_spend_car_group_counter_67,
   mobility_spend_car_group_counter_68,
   mobility_spend_car_group_counter_69,
   mobility_spend_car_group_counter_70,
   mobility_spend_car_group_counter_71,
   mobility_spend_car_group_counter_72,
   mobility_spend_car_group_counter_73,
   mobility_spend_car_group_counter_74,
   mobility_spend_car_group_counter_75,
   mobility_spend_car_group_counter_76,
   mobility_spend_car_group_counter_77,
   mobility_spend_car_group_counter_78,
   mobility_spend_car_group_counter_79,
   mobility_spend_car_group_counter_80,
   mobility_spend_car_group_counter_81,
   mobility_spend_car_group_counter_82,
   mobility_spend_car_group_counter_83,
   mobility_spend_car_group_counter_84,
   mobility_spend_car_group_counter_85,
   mobility_spend_car_group_counter_86,
   mobility_spend_car_group_counter_87,
   mobility_spend_car_group_counter_88,
   mobility_spend_car_group_counter_89,
   mobility_spend_car_group_counter_90,
   mobility_spend_car_group_counter_91,
   mobility_spend_car_group_counter_92,
   mobility_spend_car_group_counter_93,
   mobility_spend_car_group_counter_94,
   mobility_spend_car_group_counter_95,
   mobility_spend_car_group_counter_96,
   mobility_spend_car_group_counter_97,
   mobility_spend_car_group_counter_98,
   mobility_spend_car_group_counter_99,
   mobility_spend_car_group_counter_100,
   mobility_spend_car_group_counter_101
)

