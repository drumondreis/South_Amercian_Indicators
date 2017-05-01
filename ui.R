#packages

library(shiny)
library(ggplot2)
#data
data<-read.csv("Brasil.csv", header = TRUE, sep=";")
#Deging of the page

shinyUI(pageWithSidebar(
  
  headerPanel("Some south Amercian Indicators"),
  
  sidebarPanel(
    
    selectInput("x", "X", names(data)),
    selectInput("y", "Y", names(data), names(data)[[2]]),
    selectInput("color", "Color", c("None", names(data)))
  ),
  
  mainPanel(
    plotOutput("plot")
  )
))
