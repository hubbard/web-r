# Thanks to the examples at http://www.rexamples.com/7/Lists and https://www.tutorialspoint.com/r/r_lists.htm
# Create a list containing strings, numbers, vectors and a logical values
list_data <- list("Red", "Green", c(21,32,11), TRUE, 51.23, 119.1)
# Give names to the elements in the list.
names(list_data) <- c("stop color", "go color", "a vector", "logical", "first numeric", "second numeric")
s <- sum(0:9)
alpha <- append(LETTERS[1:13],letters[14:26])
mult <- c(1,6,4,9)*2
something <- c(1,4,letters[2])  # indices start at one, you get (1,4,"b")
lenSomething <- length(something)
listOfEleven <- -5:5 # You can use a colon to generate a list of numbers
listOfTwo <- c("test",3) #  The c function combines the parameters into a list and converts them to the same type
# Vectors are lists in which all elements have the same type. For example, the c function creates a vector.
listGen <- seq(from=1,to=5,by=.6) # seq generates more complex regular sequences
bThroughD <- letters[2:4]
appendedList <- append(listOfTwo, 2.4, after=1) # looks like append converts to the same type, too
l <- letters # Predefined lists
L <- LETTERS
monthAbb <- month.abb
monthName <- month.name
# Create two lists.
list1 <- list(1,2,3)
list2 <- list("Sun","Mon","Tue")
# Merge the two lists.
merged.list <- c(list1,list2)
# Convert a list to a vector
list3 <- list(1:5)
v <- unlist(list3)

list_data
s
alpha
mult
something
lenSomething
listOfEleven
listOfTwo
typeof(listOfTwo[2])
listGen
bThroughD
appendedList
l
L
monthAbb
monthName
merged.list
list3
v
