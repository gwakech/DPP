
library(shiny)
library(quantmod)
source("helpers.R")

shinyUI(fluidPage(
  titlePanel("stock Visualization Demo"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Select a  date range between 1/1/2014 - 12/31/2016 to view stock trending in that period. 
        Information will be collected from yahoo finance."),
    
      textInput("symb", "Symbol", "SPY"),
    
      dateRangeInput("dates", 
        "Date range",
        start = "2014-01-01", 
        end = as.character(Sys.Date())),
      
      br(),
      br(),
      
      checkboxInput("log", "Plot y axis on log scale", 
        value = FALSE),
      
      checkboxInput("adjust", 
        "Adjust prices for inflation", value = FALSE)
    ),
    
    mainPanel(plotOutput("plot"))
  )
))