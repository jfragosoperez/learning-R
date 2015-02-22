# USAGE OF PASTE

# paste with default separator (appends words separated by a single space)
paste("What's","your", "name","?")

# paste with custom separator (appends words separated by the given separator)
paste("a","b", sep="_")

# paste numbers from 1 to 5
paste(1:5)

# paste a sample of 10 letters from the alphabet, allowing replacement 
# (remember that sampling with replacement means that an item is allowed to appear 
# multiple times)
paste(sample(LETTERS, 10, replace=TRUE))

# appends input (numbers from 1 to 5) taking into account the collapse value
# separator and finally gives a single value with the input collapsed
paste(1:5,  collapse="a")
