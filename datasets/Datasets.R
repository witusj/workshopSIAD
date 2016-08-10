packs <- c("gsheet", "dplyr")
lapply(packs, library, character.only = TRUE)

############
# Sessie 1 #
########################
## Student performance##
########################

### Read in original dataset
studentDF <- gsheet2tbl("https://docs.google.com/spreadsheets/d/19CcCVmTkCHKoJITe70Fx9nrIah4foWG9NYNxE9J-H14")

### Create vectors of fake names
fnamesDF <- read.table("http://deron.meranda.us/data/census-derived-all-first.txt", stringsAsFactors = FALSE)
lnamesDF <- read.table("http://www.quietaffiliate.com/Files/CSV_Database_of_Last_Names.csv", stringsAsFactors = FALSE)

a <- length(studentDF$Voor)
set.seed(1)
fnamesSEL <- sample(x = fnamesDF[[1]], size = a)
set.seed(1)
lnamesSEL <- sample(x = lnamesDF[[1]], size = a)

### Replace original names with fake
studentDF$Voor <- fnamesSEL
studentDF$Achter <- lnamesSEL

### Remove variables
studentDF <- studentDF[-c(3, 9, 12)]

### Check data
glimpse(studentDF)
summary(studentDF)

### Write to csv
write.csv(x = studentDF, file = "datasets/sessie 1/stud_perf.csv")