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