# Data description
# Directions: Open R and issue the following commands at the command line to get started. 
# Note that you need to have the RcmdrPlugin.IPSUR package installed, and for some exercises 
# you need the e1071 package.
# library(RcmdrPlugin.IPSUR)
# data(RcmdrTestDrive)
# attach(RcmdrTestDrive)
# names(RcmdrTestDrive) # shows names of variables
# To load the data in the R Commander (Rcmdr), click the Data Set button, and 
# select RcmdrTestDrive as the active data set. To learn 
# more about the data set and where it comes from, type ?RcmdrTestDrive at the command line.

library(RcmdrPlugin.IPSUR)

data(RcmdrTestDrive)

attach(RcmdrTestDrive)

names(RcmdrTestDrive) # shows names of variables

#----------6

# Perform a summary of all variables in RcmdrTestDrive. Is all clear?
summary(RcmdrTestDrive)
# order             smoking       gender            race        before     
# Min.   :  1.00   Nonsmoker:136   Female:70   AfricanAmer:46   Min.   :71.30  
# 1st Qu.: 42.75   Smoker   : 32   Male  :98   Asian      :13   1st Qu.:73.10  
# Median : 84.50                               Caucasian  :73   Median :73.90  
# Mean   : 84.50                               Hispanic   :34   Mean   :73.97  
# 3rd Qu.:126.25                               Other      : 2   3rd Qu.:74.80  
# Max.   :168.00                                                Max.   :76.30  
# after           salary         reduction          parking     
# Min.   :66.60   Min.   : 377.2   Min.   :   3.00   Min.   :1.000  
# 1st Qu.:72.50   1st Qu.: 621.1   1st Qu.:  78.75   1st Qu.:1.000  
# Median :73.70   Median : 710.1   Median : 139.50   Median :1.000  
# Mean   :73.27   Mean   : 724.5   Mean   : 223.63   Mean   :1.952  
# 3rd Qu.:74.60   3rd Qu.: 808.6   3rd Qu.: 335.50   3rd Qu.:2.000  
# Max.   :76.40   Max.   :1156.2   Max.   :1632.00   Max.   :8.000



#----------7

# Make a table of the race variable. Do this with Statistics→Summaries→IPSUR -
#   Frequency Distributions...
# 1.  Which ethnicity has the highest frequency?
# 2.	Which ethnicity has the lowest frequency?
# 3.	Include a bar graph of race.

.Table <- .Table <- table(RcmdrTestDrive$race)

freq <- .Table  # frequencies
# AfricanAmer       Asian   Caucasian    Hispanic       Other 
#        46          13          73          34           2 

freq
# 1)
names(which.max(freq))
# 2)
names(which.min(freq))
# 3)
with(RcmdrTestDrive, barplot(table(race), xlab="race", ylab="Frequency"))

.Table/sum(.Table)  # relative frequencies
# AfricanAmer       Asian   Caucasian    Hispanic       Other 
# 0.27380952  0.07738095  0.43452381  0.20238095  0.01190476 



# 8---------------
# Calculate the average salary by the factor gender. Do this with 
# Statistics→Summaries→Table of Statistics...
# 1.  Which gender has the highest mean salary?
# 2.	Report the highest mean salary.
# 3.	Compare the spreads for the genders by calculating the standard deviation 
# of salary by gender. Which gender has the biggest standard deviation?
# 4.	Make boxplots of salary by gender with the following method: On the Rcmdr, 
# click Graphs . IPSUR - Boxplot... In the Variable box, select salary. 
# Click the Plot by groups... box and select gender. Click OK. Click OK to graph the boxplot.
# How does the boxplot compare to your answers to (1) and (3)?

# 1)
genderWithMeanSalary = with(RcmdrTestDrive, tapply(salary, list(gender), mean, na.rm=TRUE))
names(which.max(genderWithMeanSalary))
# 2)
max(genderWithMeanSalary)
# 3) 
genderWithStandardDeviation = with(RcmdrTestDrive, tapply(salary, list(gender), sd, na.rm=TRUE))
names(which.max(genderWithStandardDeviation))
# 4)
Boxplot(salary~gender, data=RcmdrTestDrive, id.method="y")
# the thing is that as we see, even that the mean salary is slightlier higher for male
# than for women, it increases due to the fact that there are some outliers. This is why
# the standard deviation is also greater for males, because there are some outliers that
# are far from the mean