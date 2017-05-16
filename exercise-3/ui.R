# ui.R
shinyUI(fluidPage(
  mainPanel(
    # Add a selectInput (with a proper id) that allows you to select a variable to map
    selectInput('map.var', 'Variable to map: ', c('Population' = 'population', 'Votes' = 'votes', 'Votes / Population' = 'ratio')),
    
    # Use plotlyOutput to show your map
    plotlyOutput('map')
  )
))