##(Table: Infant Attention) A researcher is interested 
##in whether infants' attention to their mothers' voices 
##increases in the first week of life. The researcher 
##selects 15 full-term infants in normal health who 
##experienced uncomplicated deliveries and tests the number 
##of seconds the infants oriented in the direction of their 
##mother's voice on Day 1 and on Day 7 after delivery. The 
##fictional data are provided in the table. Perform all six 
##steps of hypothesis testing on these data using a directional 
##hypothesis test and p < .05 as the significance level.

setwd("~/e_files/TEACHING/200 Statistics/nolan 3rd R/homework")
data = read.csv("c10 q.csv")

##create a difference score
difference = data$day7 - data$day1

##calculate the descriptives
summary(difference)
sd(difference)
sd(difference) / sqrt(length(difference))

##calculate the critical value
qt(.05,14,lower.tail = F)

##run the t-test
##make sure the variables are the same order subtracted
##alternative = greater, less, two.sided
##conf.level = 1-alpha

t.test(data$day7,
       data$day1,
       paired = T, 
       alternative = "greater",
       conf.level = .95)

d.deptdiff(mdiff = 1.33, sddiff = 1.23, n = 15, a = .05, k = 2)
