u = 4.6
o = 3.2
N = 15
M = 6.1

##get the zscore
qnorm(.15, lower.tail = F)
##get the raw score
qnorm(.15, lower.tail = F) * o + u
1.04 * 3.2 + 4.6

##percent of scores
z1 = (2.5 - u) / o
z2 = (5.2 - u) / o
pnorm(z1, lower.tail = F) - pnorm(z2, lower.tail = F)

##se
om = o / sqrt(N)

##cut off
qnorm(.05, lower.tail = F)

##z score
(6.1 - 4.6) / .83

##confidence interval
M + qnorm(.05/2, lower.tail = F)*om
M - qnorm(.05/2, lower.tail = F)*om

##effect size
(M - u) / o

##power 
##enter numbers here
popmean = u
popsd = o
alpha = .05
samplemean = M
lower = F

##auto calculate
popse = popsd / sqrt(N)
mneed = popmean + popse*qnorm(alpha, lower.tail = lower)
z = (mneed - samplemean)/popse
pnorm(z, lower.tail = lower)


