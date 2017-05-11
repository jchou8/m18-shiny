# Exercise 1: Loading functions

# Set your directory
setwd("~/INFO 201/Modules/m18-shiny/exercise-1")

# Source your BuildScatter.r script, exposing your BuildScatter function
source("scripts/BuildScatter.r")

# Use your BuildScatter function to draw a well labeled ggplot scatterplot of the iris data
BuildScatter(iris, "Sepal.Length", "Petal.Length", "Species", "Iris Sepal vs Petal Length", "Sepal Length (cm)", "Petal Length (cm)")