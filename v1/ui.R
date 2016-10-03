# Assignment 
library(shiny)

# Define UI for application that draws a histogram
shinyUI(pageWithSidebar(
  headerPanel("Maximum Heart Rate Calculator"),  #headerPanel("Data science FTWI"),
  sidebarPanel(
    numericInput('age','Please Enter Age, from 10 to 100', 10, min=10, max=100, step=1 ),
    #if(input$age > 100) { input$age <- 100}
    dateInput("date","Date:")
  ),
  mainPanel(
    plotOutput('p', height = 600, width = 1000)
  )
))


#    checkboxGroupInput("id2","Checkbox",
#                       c("value 1" = "1",
#                         "Value 2" = "2",
#                         "Value 3" = "3")),



#   h3("Main Panel text")
#    h3('Illustrating outputs'),
#    h4('You entered'),
#    verbatimTextOutput("oid1"),
#    h4('You entered'),
#    verbatimTextOutput("oid2"),
#    h4('You entered'),
#    verbatimTextOutput("odate"),