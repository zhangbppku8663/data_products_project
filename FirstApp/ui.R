#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram of 1000 averages 
# of a vector of 100 random variables
shinyUI(fluidPage(
  
  titlePanel("Simulation of normal ditribution of random variable averages"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("bins",
                   "Number of bins:",
                   min = 10,
                   max = 100,
                   value = 30),
        sliderInput("numbers",
                    "Numbers to calculate averages:",
                    min = 100,
                    max = 1000,
                    value = 200)
      
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("distPlot")
    )
  )
))
