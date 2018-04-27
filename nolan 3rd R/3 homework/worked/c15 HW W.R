c15.hw <- read.csv("~/e_files/TEACHING/200 Statistics/nolan 3rd R/homework/c15 hw.csv")

##load the library
library(ggplot2)

##theme coding
theme = theme(panel.grid.major = element_blank(), 
              panel.grid.minor = element_blank(), 
              panel.background = element_blank(), 
              axis.line.x = element_line(colour = "black"), 
              axis.line.y = element_line(colour = "black"),
              legend.key = element_rect(fill = "white"))

myplot = ggplot(c15.hw, aes(Rating, Behavior.Problems))
myplot +
  theme +
  geom_point() +
  xlab("Rating of Agreeableness") +
  ylab("Behavior Problems")

cor.test(c15.hw$Rating, c15.hw$Behavior.Problems)

qt(.05/2, 8, lower.tail = F)
