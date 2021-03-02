Lines <- "Date Miles\n 2005-10-15 100
2007-07-07 14945\n 2008-02-04 22663
2008-05-18 25695\n 2009-04-26 29500
2010-03-29 41900\n 2011-02-03 50000
2012-10-18 72300\n 2016-01-02 107620
2018-06-22 147803\n 2020-12-24 168650"
dm <- read.table(textConnection(Lines), header = TRUE)
dd=as.POSIXlt(dm$Date, format="%Y-%m-%d")
dn=1900+dd$year+dd$yday/366
dm$DateN <- dn
dm
plot(Miles ~ DateN, data = dm,
  xlab = "Year",
  ylab = "Miles",
  main = "Car Mileage Over the Years"
)
abline(-2.366e+07, 11790.0)
miles.mod1 = lm(Miles ~ DateN, data = dm)
summary(miles.mod1)
