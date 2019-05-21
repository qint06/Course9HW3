#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)


shinyUI(fluidPage(

    # Application title
    titlePanel("Correlation between random numbers"),

   
    sidebarLayout(
        sidebarPanel(
            sliderInput("numbers",
                        "Number of random numbers:",
                        min = 5,
                        max = 500,
                        value = 30)
        ),

        mainPanel(
            plotOutput("distPlot"),
            textOutput('text')
        )
    )
))
