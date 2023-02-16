#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Load Data

data("swiss")

# Define a server for the Shiny app 
function(input, output) { 
  
  # Fill in the spot we created for a plot 
  output$Fer <- renderPlot({ 
    
    # Render a barplot 
    barplot(swiss[,input$tema],  
            main=input$tema, 
            ylab="Fertility", 
            xlab="French-speaking provinces") 
  })
}