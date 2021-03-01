x <- c(106502, 37860, 159851, 35361, 17236, 23698)
n <- c("EmperorLemon", "cartoonlover98", "cs188", "Awful Fawful", "TheRumChum", "hoffy1138")
df <- data.frame(n, x) # a matrix cannot have mixed data types, so use dataframe here
df <- df[order(-x),] # sort in descending order
par(mar=c(9,5,1,1))   # extra large bottom margin BotLefTopRig
par(las=2) # las=2 makes labels vertical
barplot(df$x, names.arg=df$n, col="green", main="Youtube Subscriber Counts")
