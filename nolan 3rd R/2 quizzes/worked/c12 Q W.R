c12.data <- read.csv("~/e_files/TEACHING/200 Statistics/nolan 3rd R/homework/c12 quiz.csv")

sd(c12.data$rock)
sd(c12.data$acid)
sd(c12.data$easy)

summary(c12.data)

library(reshape)
longdata = melt(c12.data,
                measured = c("rock", "acid", "easy"))
longdata$partno = 1:nrow(longdata)

library(ez)
ezANOVA(data = longdata,
        wid = partno,
        between = variable,
        dv = value, 
        type = 3,
        return_aov = T)

qf(.05, 2,12, lower.tail = F)

pairwise.t.test(longdata$value,
                longdata$variable,
                paired = F,
                var.equal = T,
                p.adjust.method = "bonferroni")
