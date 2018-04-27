c11.hw <- read.csv("C:/Users/eri2005/Desktop/c11 hw.csv")

summary(c11.hw)
sd1 = sd(c11.hw$Third.Baseman)
sd2 = sd(c11.hw$Shortstop)
n1 = length(c11.hw$Third.Baseman)
n2 = length(c11.hw$Shortstop)
m1 = mean(c11.hw$Third.Baseman)
m2 = mean(c11.hw$Shortstop)
spooled = spooled = sqrt( ((n1-1)*sd1^2 + (n2-1)*sd2^2) / (n1+n2 - 2))
sdifference = sqrt((spooled^2/n1 + spooled^2/n2))
spooled
sdifference

qt(.05/2, 8, lower.tail = F)

t.test(c11.hw$Third.Baseman,
       c11.hw$Shortstop,
       paired = F,
       var.equal = T)

d.indt(m1, m2, sd1, sd2, n1, n2, a = .05, k = 2)
