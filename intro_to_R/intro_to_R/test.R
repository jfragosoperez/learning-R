# loading car library
library(car)

# loading David module from car library
data(Davis)

# list of variables
ls()

# attributes of the data frame
attributes(Davis)

# dimension of the data frame matrix
dim(Davis)

# Get first 10 rows of the data frame
head(Davis, 10)

# Some of the last rows of the data frame
tail(Davis)

# Calculations summary: Numerical Unvariant description --> NA's == no available variables
# 1st Qu. and 3rd Qu. == 1st and 3rd quantire 
# (NOTE: variance is not included into the summary)
summary(Davis)

# variance
var(Davis)

# calculate the variance (all the rows, and columns 2 and three)
var(Davis[,2:3])

# calculate the variance of an attribute of the data frame
var(Davis$weight)

# coefficient of variation cv(x) = SD(x) --> standard deviation / mean(x) , same as: sqrt(var(x))/mean(x)
# cx > 1 --> high dispersion
# cx << 1 --> low dispersion
# cv = 1 --> exp()

#coefficient of variation
sd(Davis$weight) / mean(Davis$weight)

# diag command --> diagonal
diag(var(Davis[,2:3]))

sqrt(diag(var(Davis[,2:3])))

attributes(Davis)$names

# Graphical Description of numeric data
# 2x2 panel to draw graphics
par(mfrow=c(2,2))
hist(Davis$weight)
hist(Davis$weight, 10)
hist(Davis$weight,10,col="blue")
hist(Davis$weight,10,col=rainbow(10))

hist(Davis$weight, freq=F) #proportions

# hist help
?hist