# Lokaal csv-bestand 

## Lees data uit lokaal csv-bestand
studDF <- read.csv("stud_perf.csv", fill = TRUE)

## Bekijk eerste regels van data
head(studDF)

## Bekijk de structuur van data
str(studDF)

## Bekijk de kwaliteit van data
summary(studDF)


# Online spreadsheet

## Lees online data in
library(gsheet)
surveyDF <- gsheet2tbl("https://docs.google.com/spreadsheets/d/1j-bW2MmrbRYso2IJekNWKsGlWL2SwtJQ_ebSj9hs7kA/edit?usp=sharing")
## Bekijk eerste regels van data
head(surveyDF, 20)

## Bekijk de structuur van data
str(surveyDF)

## Bekijk de kwaliteit van data
summary(surveyDF)

# Webscraping

# Rvest

## Laad de benodigde package(s)
library(rvest)

#Dairy
# Lees ruwe html data in.
htmlpage <- read_html("http://www.dailydairyreport.com/")

# Extraheer alle tabellen uit de ruwe data
nodes <- html_nodes(htmlpage, "table")
tables <- html_table(nodes, fill = TRUE)

# Kies een tabel en stop de data in een data frame
spotDF <- tables[4][[1]]
spotDF$X2 <- as.numeric(sub("\\$","", spotDF$X2))

#Procter & Gamble
# Lees ruwe html data in.
htmlpage <- read_html("http://www.pginvestor.com/Historic-Prices")

# Extraheer alle tabellen uit de ruwe data
nodes <- html_nodes(htmlpage, "table")
tables <- html_table(nodes, fill = TRUE)

# Kies een tabel en stop de data in een data frame
stockDF <- tables[1][[1]]

head(stockDF)
str(stockDF)
summary(stockDF)

## Quantmod

library(quantmod)
tickers <- new.env()
t <- c("PHG", "AAPL")
lapply(t, getFinancials, env = tickers)
BS <-
  data.frame(lapply(tickers, function(x) {
    viewFinancials(x, type = 'BS', period = 'A')
  }))
IS <-
  data.frame(lapply(tickers, function(x) {
    viewFinancials(x, type = 'IS', period = 'A')
  }))
CF <-
  data.frame(lapply(tickers, function(x) {
    viewFinancials(x, type = 'CF', period = 'A')
  }))

BS['Total Receivables, Net', grep('PHG.f.2014',names(BS))]


