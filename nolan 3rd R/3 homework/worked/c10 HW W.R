##(Table: TV and Aggressiveness) In a fictional study, a pretest-posttest 
##design was used to examine the influence of a television program on children's 
##aggressiveness. The number of aggressive responses was measured during an 
##observation period both before and after the television program. Perform 
##the six steps of hypothesis testing using the data in the table to determine 
##if there is a difference in the number of aggressive behaviors in children 
##after having viewed the television program.
##(a) Assess these data as a two-tailed research hypothesis using p < .05 
##significance level listing the six steps.
##(b) Compute Cohen's d as a measure of effect size and interpret its meaning.
##(c) Calculate the 95% confidence interval for the mean difference. 

setwd("~/e_files/TEACHING/200 Statistics/nolan 3rd R/homework")
data = read.csv("c10 HW.csv")

##create a difference score
difference = data$After - data$Before

##calculate the descriptives
summary(difference)
sd(difference)
sd(difference) / sqrt(length(difference))

##calculate the critical value
##divide by two for two tailed test
##remember second number is df N-1
qt(.05/2,7-1,lower.tail = F)

##run the t-test
##make sure the variables are the same order subtracted
##alternative = greater, less, two.sided
##conf.level = 1-alpha

t.test(data$After,
       data$Before,
       paired = T, 
       alternative = "two.sided",
       conf.level = .95)

d.deptdiff(mdiff = 1.43, sddiff = 2.64, n = 7, a = .05, k = 2)
