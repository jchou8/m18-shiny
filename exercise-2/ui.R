# UI for scatterplot

# Create a shinyUI with a fluidPage layout
shinyUI(fluidPage(
  
  # Add a numbericInput to choose the number of observations
  numericInput("num.obs", "Number of observations:", 100),
  
  # Add a selectInput that allows you to select a color from a list of choices
  selectInput("color", "Color:", list("Red" = "red", "Orange" = "orange", "Yellow" = "yellow", "Green" = "green", "Blue" = "blue", "Purple" = "purple")),
  
  # Plot the output with the name "scatter"
  plotOutput("scatter")
  
))