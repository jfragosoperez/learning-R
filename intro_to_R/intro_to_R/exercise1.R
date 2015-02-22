# LEARNING HOW TO READ FILES AND TABLES, SAVE CONTENT IN VARS AND SHOW THIS CONTENT

# loading library (data analysis and graphics data and functions)
library(DAAG)

#
datafile(c("molclock1",  "molclock2"))

# This places the file fuel.txt in the working directory
datafile(file="fuel")

# use file.show("filename") to examine the contents of this file
file.show("fuel.txt")

# use read.table("filename") to read it into R
read.table("fuel.txt") 

# read from path travels.txt file taking into account that first line of the file 
# is a header
travels <- read.table("../travels/travels.txt", header=TRUE)
# display value of travels
travels

file.show("../travels/travels.txt")
