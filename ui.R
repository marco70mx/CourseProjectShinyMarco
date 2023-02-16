#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Load Data

data("swiss")

# Define UI for application that draws a histogram
fluidPage(

    # Application title
    titlePanel("Course Project Shiny Marco Lopez. Using  data frame swiss"),

    # Generate a row with a sidebar 
    sidebarLayout(       
      
      
      # Define the sidebar with one input 
      sidebarPanel(p(strong("Documentation:",style="color:red"), a("User Help Page",href="https://rpubs.com/malv70mx/ShinyApplicationPitch")), 
                   selectInput("tema", "Tema:",  
                               choices=colnames(swiss)), 
                   hr(), 
                   helpText("Standardized fertility Switzerland") 
      ), 
      
      # Create a spot for the barplot 
      mainPanel( 
        plotOutput("Fer")   
      ) 
      
    ) 
) 
