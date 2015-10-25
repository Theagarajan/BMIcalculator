
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)

shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("BMI Calculator"),
  
  # Sidebar with a slider input for number of bins
  sidebarPanel(
    sliderInput("kgs",
                "Weight in kgs",
                min = 1,
                max = 250,
                value = 60),
    sliderInput("cms",
                "Height in cms",
                min = 1,
                max = 300,
                value = 180)
    
  ),
  
  # Show a plot of the generated distribution
  mainPanel(
    h1('BMI Output'),
    verbatimTextOutput("BMI"),
    h6('18.5 or less  Underweight'),
    h6('18.5 to 24.99  Normal Weight'),
    h6('25 to 29.99  Overweight'),
    h6('30 to 34.99  Obesity (Class 1)'),
    h6('35 to 39.99  Obesity (Class 2)'),
    h6('40 or greater  Morbid Obesity')
    
  )
))
