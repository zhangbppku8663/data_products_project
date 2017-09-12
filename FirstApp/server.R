#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({
    
    # generate bins based on input$bins from ui.R
    aves <- c()
    times <- input$numbers
    for (i in 1:1000){
      x    <- mean(runif(times, min=0, max=100))
      aves <- c(aves, x)
    }
    bins <- seq(min(aves), max(aves), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    hist(aves, breaks = bins, col = 'darkgray', border = 'white')
    
  })
  
})
