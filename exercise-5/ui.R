#INFO 201 M18 Exercise 5 UI

#Require shiny
library(shiny)

#Here you will define the functionality of your user interface
shinyUI(fluidPage(
  
  # Add a descriptive application title
  titlePanel("Womens Role in Society"),
  
  # Here you will add the interactivity to your app
  # Create a selectInput where the user can select either Men, Women, or Both. 
  # Create a selectInput where the user can select if they Agree or Disagree.

  # Look at the Shiny documentation for selectInput and sliderInput syntax
  # inputIDs's have been provided
  sidebarLayout(
    sidebarPanel(
      #selectInput for Men, Women, or Both
      #inputID = sex
      selectInput("sex", "Sex", c("Women" = "Female", "Men" = "Male", "Both" = "Both")),
      
      #selectInput for Agree or Disagree
      #inputID = thoughts
      selectInput("thoughts", "Thoughts", c("Agree" = "agree", "Disagree" = "disagree"))
      
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      #give your plot a descriptive name
       plotOutput("thoughts.education.plot")
    )
  )
))
