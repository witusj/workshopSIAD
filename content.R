library(googleVis)
op <- options(gvis.plot.tag='chart')

locaties <- data.frame(adres = "HAN, Kapittelweg 33, 6525 EN Nijmegen",
                       tooltip = "Lokaal C106"
)
M1 <- gvisMap(locaties, "adres" , "tooltip",
              options=list(showTip=TRUE,
                           mapType='normal',
                           zoomLevel=16,
                           width=100,
                           height=300
              )
)
