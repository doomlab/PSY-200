data = c(7,
         7,
         6,
         8,
         8,
         8,
         8,
         8,
         6,
         7,
         7,
         7,
         7,
         8,
         6)

mu = 5.867
N = length(data)

t.test(data, mu = mu, lower.tail = F, conf.level = .95)
mean(data)
sd(data)
sd(data)/sqrt(N)
qt(.05/2, 14, lower.tail = F) ##two tailed
qt(.05, 14, lower.tail = F) ##one tailed
d.singlet(m = 7.2, u = mu, sd = .77, n = N, a = .05, k = 2)


####hw####
d.singlet(m = 29.86, u = 30, sd = 3.87, n = 36, a = .05, k = 2)
qt(.05/2, 35, lower.tail = F)

d.singlet(m = 23.7, u = 22, sd = 6.1, n = 20, a = .05, k = 2)
qt(.05/2, 19, lower.tail = F)
