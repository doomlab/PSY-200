c16.quiz <- read.csv("~/e_files/TEACHING/200 Statistics/nolan 3rd R/homework/c16 quiz.csv")

output = lm(life ~ people, data = c16.quiz)
summary(output)

qt(.05/2, 3, lower.tail = F)

library(QuantPsyc)
lm.beta(output)

library(ggplot2)
theme = theme(panel.grid.major = element_blank(), 
              panel.grid.minor = element_blank(), 
              panel.background = element_blank(), 
              axis.line.x = element_line(colour = "black"), 
              axis.line.y = element_line(colour = "black"),
              legend.key = element_rect(fill = "white"))

myplot = ggplot(c16.quiz, aes(people, life))
myplot +
  theme +
  geom_point() +
  xlab("People Per Physician") +
  ylab("Life Expectancy")
