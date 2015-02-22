# For each column of the data frame Pima.tr2 (MASS ), determine the number of missing values.

library(MASS)

for (i in 1:ncol(Pima.tr2) ) {
  missing[i] <- length(which(is.na(Pima.tr2[i])))
}

result = matrix(nrow = 2, ncol = ncol(Pima.tr2), byrow = TRUE)
result[1,] = colnames(Pima.tr2)
result[2,] = missing
result

