c15.quiz <- read.csv("~/e_files/TEACHING/200 Statistics/nolan 3rd R/homework/c15 quiz.csv")

##load the library
library(ggplot2)

##theme coding
theme = theme(panel.grid.major = element_blank(), 
              panel.grid.minor = element_blank(), 
              panel.background = element_blank(), 
              axis.line.x = element_line(colour = "black"), 
              axis.line.y = element_line(colour = "black"),
              legend.key = element_rect(fill = "white"))

myplot = ggplot(c15.quiz, aes(life, tv))
myplot +
  theme +
  geom_point() +
  xlab("Life Expectancy") +
  ylab("Number of TVs")

cor.test(c15.quiz$life, c15.quiz$tv)
