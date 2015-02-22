# READING CONTENT FROM A WEBPAGE

# web folder from where we want to read the file
webfolder  <- "http://www-eio.upc.edu/~pau/cms/rdata/csv/car"

# append to the folder, file name with its extension. 
# we append the folder separator between the folder and the file from which
# we want to read later
webpage  <-  paste(webfolder,  "Florida.csv",  sep="/")

# reading table from a file we get from the url and saving 
# table content into a var
molclock <- read.table(url(webpage))
