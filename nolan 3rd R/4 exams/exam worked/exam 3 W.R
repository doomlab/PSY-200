setwd("~/e_files/TEACHING/200 Statistics/nolan 3rd R/exams/exam 3")

####question 1####
##anova
ques1 <- read.csv("~/e_files/TEACHING/200 Statistics/nolan 3rd R/exams/exam 3/exam 3 q 1.csv")

summary(ques1)
sd(ques1$Young.Adult)
sd(ques1$Middle.Adult)
sd(ques1$Older.Adult)

library(reshape)
longdata = melt(ques1, 
                measured = c("Young.Adult", "Middle.Adult", "Older.Adult"))
longdata$partno = 1:nrow(longdata)
longdata = na.omit(longdata)

library(ez)
ezANOVA(data = longdata,
        dv = value,
        between = variable,
        wid = partno,
        type = 3,
        return_aov = T)

qf(.05, 2, 27, lower.tail = F)

pairwise.t.test(longdata$value,
                longdata$variable,
                paired = F,
                var.equal = T, 
                p.adjust.method = "bonferroni")

####question 2####
##single sample t
ques2 <- read.csv("~/e_files/TEACHING/200 Statistics/nolan 3rd R/exams/exam 3/exam 3 q 2.csv", sep="")
summary(ques2)
sd(ques2$frustration)
sd(ques2$frustration) / sqrt(length(ques2$frustration))
length(ques2$frustration)

qt(.01, 9, lower.tail = T)

t.test(ques2$frustration,
       mu = 6.3,
       conf.level = .99, 
       alternative = "less")

d.singlet(m = 3.9, u = 6.3,
          sd = 1.60, n = 10,
          a = .01, k = 2)

####question 3####
##Indepedent t
summary(ques3)

m1 = 109.70
m2 = 108.8
sd1 = sd(ques3$Biofeedback)
sd1
sd2 = sd(ques3$Diet)
sd2
n1 = length(ques3$Biofeedback)
n1
n2 = length(ques3$Diet)
n2

spooled = sqrt( ((n1-1)*sd1^2 + (n2-1)*sd2^2) / (n1+n2 - 2))
spooled
sdifference = sqrt((spooled^2/n1 + spooled^2/n2))
sdifference

qt(.05/2, 18, lower.tail = F)

t.test(ques3$Biofeedback,
       ques3$Diet,
       paired = F,
       var.equal = T, 
       conf.level = .95,
       alternative = "two.sided")

t.test(review.exam.3.3$Women,
       review.exam.3.3$Men,
       paired = F,
       var.equal = T, 
       conf.level = .99,
       alternative = "two.sided")

####question 4####
##dependent t test
ques4 <- read.csv("~/e_files/TEACHING/200 Statistics/nolan 3rd R/exams/exam 3/exam 3 q 4.csv")

difference = ques4$Post.Test - ques4$Pre.Test
summary(difference)
sd(difference)
sd(difference) / sqrt(length(difference))
length(difference)

qt(.01, 9, lower.tail = F)

t.test(ques4$Post.Test,
       ques4$Pre.Test,
       paired = T, 
       conf.level = .99,
       alternative = "greater")

d.deptdiff(mdiff = 1.40, sddiff = 1.43, n = 10,
           a = .01, k = 2)


