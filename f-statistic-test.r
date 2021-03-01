cat("R version of the Khan Academy example here: http://amps.ws/ftest\n")
score <- c(3, 2, 1, 5, 3, 4, 5, 6, 7)
foodType <- c(rep("food1", 3), rep("food2", 3),  rep("food3", 3))
boxplot(score ~ foodType)
oneway.test(score ~ foodType, var.equal=TRUE)
cat("We therefore reject the null hypothesis with only a 0.8% chance of a Type I error.\n")

cat("\n==================================================================\n")

cat("\nHere is a less trivial example: http://ww2.coastal.edu/kingw/statistics/R-tutorials/oneway.html\n")
data(InsectSprays); attach(InsectSprays); InsectSprays
tapply(count, spray, mean); tapply(count, spray, var); tapply(count, spray, length)
#boxplot(count ~ spray) #this interface only allows one plot, so comment out the boxplot command above
oneway.test(count ~ spray)
