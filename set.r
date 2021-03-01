(x <- c(sort(sample(1:20, 9)), NA))
(y <- c(sort(sample(3:23, 9)), NA))
union(x, y)
intersect(x, y)
setdiff(x, y)
setdiff(y, x)
setequal(x, y)

## True for all possible x & y :
setequal(union(x, y), c(setdiff(x, y), intersect(x, y), setdiff(y, x)))

is.element(x, y) # length 10
is.element(y, x) # length  8

df = data.frame(x, y)
df
df[df$x > 9,]
