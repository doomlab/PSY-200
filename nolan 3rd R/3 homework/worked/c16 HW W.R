c16.HW <- read.csv("~/e_files/TEACHING/200 Statistics/nolan 3rd R/homework/c16 HW.csv")

output = lm(grad ~ exp, data = c16.HW)
summary(output)

qt(.05/2, 3, lower.tail = F)

library(QuantPsyc)
lm.beta(output)

##load the library
library(ggplot2)

##theme coding
theme = theme(panel.grid.major = element_blank(), 
              panel.grid.minor = element_blank(), 
              panel.background = element_blank(), 
              axis.line.x = element_line(colour = "black"), 
              axis.line.y = element_line(colour = "black"),
              legend.key = element_rect(fill = "white"))

myplot = ggplot(c16.HW, aes(exp, grad))
myplot +
  theme +
  geom_point() +
  xlab("Expenditure per Student") +
  ylab("Graduation Rate")
