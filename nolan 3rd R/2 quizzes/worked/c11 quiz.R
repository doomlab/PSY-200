c11.quiz <- read.csv("~/Dropbox/Help Desk/200/quiz worked/c11 quiz.csv")

summary(c11.quiz)
sd1 = sd(c11.quiz$Soy.Diet)
sd2 = sd(c11.quiz$Traditional.Diet)
m1 = mean(c11.quiz$Soy.Diet)
m2 = mean(c11.quiz$Traditional.Diet)
n1 = length(c11.quiz$Soy.Diet)
n2 = length(c11.quiz$Traditional.Diet)
spooled = spooled = sqrt( ((n1-1)*sd1^2 + (n2-1)*sd2^2) / (n1+n2 - 2))
sdifference = sqrt((spooled^2/n1 + spooled^2/n2))
spooled
sdifference
qt(.05/2, 10, lower.tail = F)
t.test(c11.quiz$Soy.Diet,
       c11.quiz$Traditional.Diet,
       var.equal = T,
       paired = F)
