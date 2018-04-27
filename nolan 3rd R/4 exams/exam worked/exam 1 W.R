##exam 1 worked
library(ggplot2)
theme = theme(panel.grid.major = element_blank(), 
              panel.grid.minor = element_blank(), 
              panel.background = element_blank(), 
              axis.line = element_line(colour = "black"), 
              legend.key = element_rect(fill = "white"))

myplot = ggplot(examdata, aes(Ratings))
myplot +
  theme +
  geom_histogram(binwidth = 1)

myplot = ggplot(examdata, aes(Hand, Ratings))
myplot +
  theme +
  stat_summary(fun.y = mean, 
               geom = "bar", 
               fill = "White", 
               color = "Black") +
  stat_summary(fun.data = mean_cl_normal,                
               geom = "errorbar", 
               position = position_dodge(width = 0.90),
               width = 0.2) 

myplot = ggplot(examdata, aes(Word.Speed, Ratings))
myplot +
  theme +
  geom_point() +
  geom_smooth(method = "lm")

summary(examdata$Ratings)

temp <- table(as.vector(examdata$Ratings))
names(temp)[temp == max(temp)]

IQR(examdata$Ratings)

pop.var <- function(x) var(x) * (length(x)-1) / length(x) 
pop.sd <- function(x) sqrt(pop.var(x))
pop.var(examdata$Ratings)
pop.sd(examdata$Ratings)

sd(examdata$Ratings)
var(examdata$Ratings)
