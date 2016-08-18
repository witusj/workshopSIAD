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

## Leaflet
library(leaflet)
library(gsheet)
library(googleVis)


# Download a sheet

gpsData <- read.csv(file = "https://raw.githubusercontent.com/witusj/R-workshop/gh-pages/Datasets/sessie%203/gps_data.csv",
                    stringsAsFactors = TRUE)

latCtr <- mean(gpsData$lat)
lonCtr <- mean(gpsData$lon)

gpsData$coords <- paste0(gpsData$lat, ":", gpsData$lon)

g <- gvisMap(gpsData, locationvar = "coords", tipvar = "time", options = list())
plot(g)

pal <- colorNumeric(palette = colorspace::diverge_hsv(3), domain = c(min(gpsData$speed), max(gpsData$speed)))

m2 <- leaflet() %>%
  addTiles() %>%
  setView(lonCtr, latCtr, 12) %>% # map location
  # add som circles:
  addCircles(color = pal(gpsData$speed), lng=gpsData$lon, lat=gpsData$lat, 20)
m2

