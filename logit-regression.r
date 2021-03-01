# Thanks to the UCLA IDRE for this example http://www.ats.ucla.edu/stat/r/dae/logit.htm
library(aod)
library(ggplot2)
# if you are ever missing a package, start R as root (i.e. sudo R) and use install.packages("packagename") to get it

cat("logit is for a binary outcome (e.g., do or do not get accepted to grad school, based on GRE, GPA, and ")
cat("undergrad school prestige ranking)\n")
mydata <- read.csv("https://stats.idre.ucla.edu/stat/data/binary.csv")
head(mydata)
summary(mydata)
sapply(mydata, sd)

mydata$rank <- factor(mydata$rank)
mylogit <- glm(admit ~ gre + gpa + rank, data = mydata, family = "binomial")
summary(mylogit)
cat("I just realized that I do not know how to use these results. Please call/text if you can teach me 804-313-9894.\n")

# CIs using profiled log-likelihood
confint(mylogit)
wald.test(b = coef(mylogit), Sigma = vcov(mylogit), Terms = 4:6)
