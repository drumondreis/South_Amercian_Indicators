#
#packages

library(shiny)
library(ggplot2)
#data
data<-read.csv("Brasil.csv", header = TRUE, sep=";")


shinyServer(function(input, output) {
  data <- data
  output$plot <- reactivePlot(function() {
    
    p <- ggplot(data, aes_string(x=input$x, y=input$y)) + geom_point()
    
    if (input$color != "None")
      p <- p + aes_string(color=input$color)
    


    
    print(p)
    
  }, height=600
  )
  
})