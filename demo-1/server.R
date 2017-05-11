# From: http://shiny.rstudio.com/articles/basics.html
library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should be automatically
  #     re-executed when inputs change
  #  2) Its output type is a plot
  
  output$distPlot <- renderPlot({
    # x    <- faithful[, 2]  # Old Faithful Geyser data
    # bins <- seq(min(x), max(x), length.out = input$bins + 1)
    data <- faithful[1:input$num.points,]
    
    # draw the histogram with the specified number of bins
    return(ggplot() + geom_point(mapping = aes(x = data[,1], y = data[,2])) +
             labs(x = "Eruption length", y = "Time between eruptions"))})
  
})