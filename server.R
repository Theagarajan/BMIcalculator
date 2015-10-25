
# This is the server logic for a Shiny web application.
#

library(shiny)

shinyServer(function(input, output) {
   
  output$BMI <- renderPrint({ input$kgs/(input$cms/100)^2  
  })
  
})
