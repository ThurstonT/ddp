# Assignment 
library(UsingR)
library(shiny)
library(ggplot2)

shinyServer(
function(input, output) {
  output$p <- renderPlot({
    ggplot(data.frame(x=c(10,105)), aes(x)) +
    stat_function(fun=function(x)220-x, geom="line", aes(colour="Best Known"), size=1) +  # Best known
    stat_function(fun=function(x)206.3-(0.711*x), geom="line", aes(colour="Londeree &Moeschberger"), size=1) + # Londeree &Moeschberger
    stat_function(fun=function(x)217-(0.85*x), geom="line", aes(colour="Miller"), size=1) +  # for Miller 
    stat_function(fun=function(x)202-(0.55*x), geom="line", aes(colour="UK - Men"), size=1) +  # UK - men 
    stat_function(fun=function(x)216-(1.09*x), geom="line", aes(colour="UK - Women"), size=1) +  # for Women 
    stat_function(fun=function(x)206-(0.88*x), geom="line", aes(colour="Dr. Martha Gulati et al"), size=1) +  # for women Dr. Martha Gulati et al  
    scale_colour_manual("MHR Equations", values = c("Blue", "Black", "Red", "Orange", "Brown", "Light Blue"))+
    geom_vline(xintercept=input$age, color="Green", size = 1)   +
    scale_x_continuous(name="Age", limits=c(10, 105)) +
    scale_y_continuous(name="Heart Rate", limits=c(85, 215)) +
    annotate("text",x=c(100),y=c(213), xmin= 95, label= paste("Age is",input$age)) +
    annotate("text",x=c(100),y=c(206),xmin= 95,label= paste("Upper Max Heart Rate is",
        (round(max(206.3-(0.711*input$age), 206-(0.88*input$age),217-(0.85*input$age), 202-(0.55*input$age), 216-(1.09*input$age)),digits = 0)))) +
    annotate("text",x=c(100),y=c(199),xmin= 95,label= paste("Lower Max Heart Rate is",
        (round(min(206.3-(0.711*input$age), 206-(0.88*input$age),217-(0.85*input$age), 202-(0.55*input$age), 216-(1.09*input$age)), digits=0)))) +
    ggtitle("Maximum Heart Rate")
  })
}
)
  