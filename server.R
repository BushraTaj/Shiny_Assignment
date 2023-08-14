#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
server <- function(input, output){
  observeEvent(input$BMI, {
    bmi <- input$n1 + input$n2
    add_text <- sprintf("Your BMI is %d / %d = %d", input$n1, input$n2, bmi)
    output$n1_divide_n2 <- renderText(add_text)
  })
}