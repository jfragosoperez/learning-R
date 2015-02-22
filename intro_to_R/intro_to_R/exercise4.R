# COUNTING FOR EACH SPECIES THE NUMBER OF MISSING VALUES FOR THE
# COLUMN ROOT OF THE DATA FRAME RAINFOREST (DAAG)

# loading library (data analysis and graphics data and functions)
library(DAAG)

# with(data, expr, ...)
# Evaluate an R expression in an environment constructed 
# from data, possibly modifying (a copy of) the original data.

# complete.cases(...)
# Return a logical vector indicating which cases are complete, i.e., 
# have no missing values.

with(rainforest, table(complete.cases(root), species))
# results into:
# species
# Acacia mabellae C. fraseri Acmena smithii B. myrtifolia
# FALSE               7         12             26             7
# TRUE                9          0              0             4

# where we can see that the booleans false/true state missing(NA) or non-missing values and
# then we see for each of the species the number of elements that have missing/non-missing 
# vales for the column root

# for each species how many rows are "complete", i.e., have no values that 
# are missing?
with(rainforest, table(complete.cases(rainforest[1:ncol(rainforest)-1]), species))
