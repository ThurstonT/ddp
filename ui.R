# Assignment 
library(shiny)

# Define UI for application that draws a histogram
shinyUI(pageWithSidebar(
  headerPanel("Maximum Heart Rate Calculator"),  #headerPanel("Data science FTWI"),
  sidebarPanel(
    p("There are several equations to calculate your Maximum Heart Rate"),
    p("This application shows six and identifies the upper and lower values of the six algorithms"),
    p("Please enter your age in the input box below."),
    numericInput('age','Please Enter Age, from 10 to 100', 10, min=10, max=100, step=1 ),
    #if(input$age > 100) { input$age <- 100}
    dateInput("date","Date:")
  ),
  mainPanel(
    plotOutput('p', height = 600, width = 1000)
  )
))

