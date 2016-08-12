packs <- c("gsheet", "dplyr", "readstata13", "XML")
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
write.csv(x = studentDF, file = "sessie 1/stud_perf.csv", row.names = FALSE)

############
# Sessie 2 #
##############################
## Current Population Survey##
##############################

dataRaw <- read.dta13("sessie 2/morg15.dta")
dataClean <- select(dataRaw, hhid, intmonth, hrhtype, stfips, age, sex, race, prcitshp, lfsr94, ftpt94, class94, uhourse, paidhre, earnwke)
dataRaw <- NULL
race_codes <- gsheet2tbl("https://docs.google.com/spreadsheets/d/1Opszqs5nRPBHFSnYu_49TBaFPTsEmVuZaYI7-XSj2sU/edit?usp=sharing")
gender_codes <- gsheet2tbl("https://docs.google.com/spreadsheets/d/1MvTaBaN_NtIEq7QKvPNoBE_uj3-wje8_UvQ_DW4jmg8/edit?usp=sharing")
state_codes <- read.csv("sessie 2/states.csv")
dataClean <- merge(dataClean, race_codes, by.x = "race", by.y = "code", all.x = TRUE)
dataClean <- dataClean[-1]
dataClean <- merge(dataClean, gender_codes, by.x = "sex", by.y = "code", all.x = TRUE)
dataClean <- dataClean[-1]
dataClean <- merge(dataClean, state_codes, by.x = "stfips", by.y = "Abbreviation", all.x = TRUE)
dataClean <- dataClean[-1]
dataClean <- dataClean[c(1:5,12:14,6:11)]
write.csv(dataClean, file = "sessie 2/cps_morg.csv", row.names = FALSE)

openData <- xmlToDataFrame(doc="http://opendata.alphenaandenrijn.nl/bomen.xml")
write.csv(openData, "sessie 2/open_data.csv")
