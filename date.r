as.Date("2014-01-27") - as.Date("2003-10-01")
a <- as.POSIXlt("2014-02-28 02:08:10")
names(unclass(as.POSIXlt("2009-10-04")))
a
a$mday <- a$mday - 6
a$mday
a$yday
a
born <- as.POSIXlt("2003-10-01")
wborn <- as.POSIXlt("2006-03-13")
n <- as.POSIXlt(Sys.Date())
born
Sys.time()
Sys.Date()
paste("Thomas is ", (n$year - born$year) + (n$mon - born$mon) / 12, " years old (to the nearest month).")
paste("Thomas is ", (n$year - born$year) + (n$mon - born$mon) / 12 + (n$mday - born$mday) / 365, " years old (to the nearest day).")
paste("Walden is ", (n$year - wborn$year) + (n$yday - wborn$yday) / 365, " years old (to the nearest day).")

library(ggplot2); library(plyr); library(scales)
# if you are ever missing a package, start R as root (i.e. sudo R) and use install.packages("packagename") to get it
Lines <- "Date            Visits\n
    11/1/2010   696537\n    11/2/2010   718748\n    11/3/2010   799355\n    11/4/2010   805800\n
    11/5/2010   701262\n    11/6/2010   531579\n    11/7/2010   690068\n    11/8/2010   756947\n
    11/9/2010   718757\n    11/10/2010  701768\n    11/11/2010  820113\n    11/12/2010  645259"
dm <- read.table(textConnection(Lines), header = TRUE)
dm <- mutate(dm, Date = as.Date(dm$Date, "%m/%d/%Y"))
g <- ggplot(data = dm, aes(Date, Visits)) + geom_line()
g <- g + scale_x_date(labels = date_format("%m/%d"))
#scale_x_date(labels = date_format("%W"), breaks = date_breaks("week"))
g
cat("great examples here:  http://docs.ggplot2.org/current/scale_date.html")
