##question 1 regression
question1 <- read.csv("~/OneDrive - Missouri State University/TEACHING/200 Statistics/nolan 3rd R/exams/exam 4/question1.csv")

output = lm(length.trial ~ length.decision, data = question1)
summary(output)

library(ggplot2)

theme = theme(panel.grid.major = element_blank(), 
              panel.grid.minor = element_blank(), 
              panel.background = element_blank(), 
              axis.line.x = element_line(colour = "black"),
              axis.line.y = element_line(colour = "black"),
              legend.key = element_rect(fill = "white"))

scatter = ggplot(question1, aes(length.trial, length.decision))
scatter +
  geom_point() + 
  theme +
  xlab("Length of Trial (Weeks)") +
  ylab("Length of Decision (Hours)")

library(QuantPsyc)

lm.beta(output)

qt(.05/2, 8, lower.tail = F)

##question 2 correlation 
question2 <- read.csv("~/OneDrive - Missouri State University/TEACHING/200 Statistics/nolan 3rd R/exams/exam 4/question2.csv")

scatter = ggplot(question2, aes(Age.Walking, Athletic.Rating))
scatter +
  geom_point() + 
  theme +
  xlab("Age Walking") +
  ylab("Athletic Rating")

cor.test(question2$Age.Walking, question2$Athletic.Rating)

qt(.05/2, 6, lower.tail = F)

##question 3 multiple regression 
question3 <- read.csv("~/OneDrive - Missouri State University/TEACHING/200 Statistics/nolan 3rd R/exams/exam 4/question3.csv")

output = lm(procrastinate ~ GPA + motivation + grade,
            data = question3)
summary(output)

predicted = output$fitted.values

scatter = ggplot(question3, aes(predicted, procrastinate))
scatter +
  geom_point() + 
  theme +
  xlab("Predicted Values") +
  ylab("Procrastination Scores")

lm.beta(output)

qt(.05/2, 16, lower.tail = F)



##scatterplot
library(ggplot2)


cor.test(correlation$math, correlation$belief)

qt(.05/2, 4, lower.tail = F)

##regression
regression1 <- read.csv("~/e_files/TEACHING/200 Statistics/nolan 3rd R/exams/exam 4/regression1.csv")

output = lm(Response.Time ~ Familiarity, data = regression1)
summary(output)

library(QuantPsyc)
lm.beta(output)

qt(.05/2, 5, lower.tail = F)

scatter = ggplot(regression1, aes(Familiarity, Response.Time))
scatter +
  geom_point() + 
  theme +
  xlab("Familiarity") +
  ylab("Response Time") +
  geom_smooth(method = "lm")

##multiple regression
regression2 <- read.csv("~/e_files/TEACHING/200 Statistics/nolan 3rd R/exams/exam 4/regression2.csv")

output = lm(Rating ~ Letter.Frequency + Word.Frequency + Typing.Speed,
            data = regression2)
summary(output)

lm.beta(output)

qt(.05/2, 11, lower.tail = F)

predicted = output$fitted.values
myplot = ggplot(regression2, aes(predicted, Rating))
myplot +
  geom_point() +
  xlab("Predicted Score") +
  ylab("Rating") +
  theme +
  geom_smooth(method = "lm")
