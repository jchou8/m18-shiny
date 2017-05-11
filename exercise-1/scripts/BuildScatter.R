# Function to build a scatterplot
library(ggplot2)

# Write your function to parameterize the following variables:
#   - Data to use
#   - Variable for the x axis
#   - Variable for the y axis
#   - Variable for the color
#   - Title of the plot (set a default of "Title")
#   - Label for the x axis (set a default of "X Title")
#   - Label for the y axis (set a default of "Y Title")

BuildScatter <- function(my.data, xvar, yvar, colorvar, my.title = "Title", xlabel = "X Title", ylabel = "Y Title") {
  return(ggplot(data = my.data) + 
    geom_point(mapping = aes(x = my.data[,xvar], y = my.data[,yvar], color = my.data[,colorvar])) + 
    labs(title = my.title, x = xlabel, y = ylabel, color = colorvar))
}