packs <- c("gsheet", "dplyr", "readstata13", "XML", "tidyr")
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

#######################################
## Bomeninformatie Aphen aan de Rijn ##
#######################################
openData <- xmlToDataFrame(doc="http://opendata.alphenaandenrijn.nl/bomen.xml")
write.csv(openData, "sessie 2/open_data.csv")

################################
## Subsidieregister Purmerend ##
################################
# Laad de benodigde package(s)

# Input ruwe data, output data frame

scrapeData <- function(website, extension = "") {
  
  library(rvest)
  url <- paste0(website, extension)
  htmlpage <- read_html(url)
  
  # Extraheer alle tabellen uit de ruwe data
  nodes <- html_nodes(htmlpage, "table")
  tables <- html_table(nodes, fill = TRUE)
  return(tables[1][[1]])

}

## Build dataset

website <- "https://www.purmerend.nl/subsidieregister"
subsData <- scrapeData(website = website)

for(i in c(1:21)) {
  
  extension <- paste0("?page=", i)
  print(extension)
  addData <- scrapeData(website = website, extension = extension)
  newData <- rbind(subsData, addData)
  subsData <- newData
  
}

subsData$Bedrag <- gsub(pattern = "€", replacement = "", x = subsData$Bedrag)
subsData$Bedrag <- gsub(pattern = "\\.", replacement = "", x = subsData$Bedrag)
subsData$Bedrag <- gsub(pattern = ",", replacement = ".", x = subsData$Bedrag)
subsData$Bedrag <- as.numeric(subsData$Bedrag)

str(subsData)
summary(subsData)

write.csv(subsData, "sessie 2/subs_data.csv")

###########################
## Spreiding Survey Data ##
###########################

### dfRisk komt uit de Survey app.R. Run deze eerst.
write.csv(dfRisk, "sessie 3/mean_var.csv")

###########################
## GPS Data ##
###########################
# Download a sheet
url <- 'https://docs.google.com/spreadsheets/d/1bspvOXiUfYOhw-AZOknyAeyK2aTN5-01BhSevoyyQg0'
gpsData <- gsheet2tbl(url)

gpsData$lat <- gsub(pattern = ".", replacement = "", gpsData$lat, fixed = TRUE)
gpsData$lat <- as.numeric(gpsData$lat)/1000000

gpsData$lon <- gsub(pattern = ".", replacement = "", gpsData$lon, fixed = TRUE)
gpsData$lon <- as.numeric(gpsData$lon)/1000000

gpsData$speed <- gsub(pattern = ".", replacement = "", gpsData$speed, fixed = TRUE)
gpsData$speed <- as.numeric(gpsData$speed)/1000000

gpsData$coords <- paste0(gpsData$lat, ":", gpsData$lon)

write.csv(gpsData, "sessie 3/gps_data.csv")

###########################
## Evenementen Amsterdam ##
###########################

eventData <- read.csv("http://open.datapunt.amsterdam.nl/Evenementen.csv", sep = ";")
write.csv(eventData, "sessie 3/event_data.csv")

