library(gsheet)
## Bouw Google Bubble Chart

url <- 'https://docs.google.com/spreadsheets/d/1f0qX_BBu-4qhKHa6mBiwbUHmUahrXcHeWieBDD9fiXg'
surveyData <- gsheet2tbl(url)

survChart <- gvisBubbleChart(surveyData,
                             idvar = "Naam",
                             xvar = "Waarschijnlijkheid",
                             yvar = "Gevolg",
                             colorvar = "Soort.Risico",
                             options = list(hAxis = '{minValue:1, maxValue:5, title:"Gevolg"}'
                                            ,vAxis = '{minValue:1, maxValue:5, title:"Waarschijnlijkheid"}',
                                            width = 700,
                                            height = 700
                                            )
                             )
plot(survChart)

## Bouw Google Bubble Chart 1
survChart1 <- gvisBubbleChart(surveyData,
                             idvar = "Naam",
                             xvar = "Waarschijnlijkheid.1",
                             yvar = "Gevolg.1",
                             colorvar = "Soort.Risico.1",
                             options = list(hAxis = '{minValue:1, maxValue:5, title:"Gevolg"}'
                                            ,vAxis = '{minValue:1, maxValue:5, title:"Waarschijnlijkheid"}',
                                            width = 700,
                                            height = 700
                             )
)
plot(survChart1)

## Bouw Plotly Chart
p <- plot_ly(
  meanvarDF,
  x = Waarschijnlijkheid,
  y = Gevolgen,
  mode = "markers+text",
  color = Perc.Kans,
  size = Spreiding,
  text = Topic,
  #text = paste0(Topic, "<br>", "Kans: ", Perc.Kans, "%"),
  
  cmin = 0,
  cmax = 1,
  colors = c("red", "orange", "white", "light blue" , "dodgerblue"),
  textfont = list(
    family = "'Cabin Sketch', cursive",
    size = 20,
    color = toRGB("black")
  )
)
p

## Leaflet Mobiel
library(leaflet)
library(gsheet)
library(googleVis)


# Download a sheet

gpsDF <- read.csv(file = "https://raw.githubusercontent.com/witusj/R-workshop/gh-pages/Datasets/sessie%203/gps_data.csv",
                    stringsAsFactors = TRUE)

latCtr <- mean(gpsDF$lat)
lonCtr <- mean(gpsDF$lon)

gpsDF$coords <- paste0(gpsDF$lat, ":", gpsDF$lon)

g <- gvisMap(gpsDF, locationvar = "coords", tipvar = "time", options = list())
plot(g)

m1 <- leaflet() %>%
  addTiles() %>%
  setView(lonCtr, latCtr, 12) %>% # map location
  # add som circles:
  addCircles(color = "Red", lng=gpsDF$lon, lat=gpsDF$lat, 20)
m1


## Leaflet Events

eventDF <- read.csv(file = "https://github.com/witusj/R-workshop/raw/gh-pages/Datasets/sessie%203/event_data.csv",
                  stringsAsFactors = FALSE)

eventDF$Latitude <- as.numeric(gsub(",", ".", eventDF$Latitude))
eventDF$Longitude <- as.numeric(gsub(",", ".", eventDF$Longitude))

latCtr <- mean(eventDF$Latitude)
lonCtr <- mean(eventDF$Longitude)

m2 <- leaflet() %>%
  addTiles() %>%
  setView(lonCtr, latCtr, 12) %>% # map location
  addCircles(color = "Red", lng=eventDF$Longitude, lat=eventDF$Latitude, 20, popup = eventDF$Title)
m2
