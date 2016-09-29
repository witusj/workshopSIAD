# Libs ----

library(shiny)

# GIS libraries
library(maptools) # will also load SP
library(rgeos) # to read
library(rgdal) # to read Shapefiles
library(broom) # To fortify GIS data

# plotting
library(ggplot2)
library(ggthemes) # theme_map and tableau colors
library(ggiraph)

# Load dplyr the last
library(dplyr)

# Load Map Only Once -----

# GeoJson
geoJsonURL <- 'https://github.com/nvkelso/natural-earth-vector/raw/master/geojson/ne_50m_admin_0_countries.geojson.gz'
# Local Cached copy
geoJSONFile <- 'ne_50m_admin_0_countries.geojson'

if(!file.exists(geoJSONFile)) {
  gZipFile = paste(geoJSONFile,'.gz',sep='')
  download.file(geoJsonURL, gZipFile, mode='wb', quiet = TRUE)
  system(paste('gunzip -S .gz ',gZipFile)) # TODO make this OS independent
}

if("GeoJSON" %in% ogrDrivers()$name) {
  g <- rgdal::readOGR(geoJSONFile, 'OGRGeoJSON', stringsAsFactors = FALSE)
} else {
  stopApp("Need rgdal with GeoJSON reading capabilities")
}

g.f <- broom::tidy(g, region='name')
g.f <- left_join(g.f, g@data %>%
                   select(iso_a2, iso_a3, name, formal_en, long_len
                          , region_un,region_wb,subregion,continent
                          , pop_est, pop_year, lastcensus
                          , gdp_md_est, gdp_year
                          , economy, income_grp, wikipedia
                   ),
                 by = c('id' = 'name'))

# filter out countries/regions not needed
g.f <- g.f %>% filter(id != 'Antarctica')

# UI ----

# Define UI for application that draws a histogram
ui <- shinyUI(fluidPage(
  
  # Application title
  titlePanel("Map Test"),
  
  verticalLayout(
    h3("Static Map"),
    plotOutput("staticMap"),
    hr(),
    h3("Interactive Map"),
    ggiraphOutput("interactiveMap")
  )
))

# Server ----

server <- shinyServer(function(input, output) {
  
  # This works
  output$staticMap <- renderPlot({
    getMap()
  })
  
  # This doesn't
  output$interactiveMap <- renderggiraph({
    ggiraph(code={print(getMap())})
  })
})

getMap <- function() {
  gg <- ggplot() +
    geom_map_interactive(data=g.f, map=g.f,
                         aes(x=long, y=lat, map_id=id, fill=pop_est
                             , data_id=iso_a3
                             , tooltip=iso_a3
                         ),
                         color="#111111", size=0.05, alpha=1) +
    theme_map() +
    theme(strip.background=element_blank()) +
    scale_fill_continuous_tableau(
      guide =  guide_colorbar(title = 'Population', draw.ulim = T),
      labels = scales::comma
    )
  return(gg)
}


# Run the application
shinyApp(ui = ui, server = server)