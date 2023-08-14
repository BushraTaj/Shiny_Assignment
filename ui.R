#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
library(shiny)
ui <- fluidPage(
  titlePanel("All About Health! All About Your BMI!"),
  sidebarLayout(
    sidebarPanel(
      numericInput("n1", "My Weight in Kgs", 0),
      numericInput("n2", "My Height in meters", 0),
      actionButton("BMI", "What is my BMI?")
    ),
    mainPanel(textOutput(outputId = "n1_divide_n2"))
  )
)