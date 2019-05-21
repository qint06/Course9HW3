#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)


shinyServer(function(input, output) {
      
    output$distPlot <- renderPlot({

        
            x <- rnorm(input$numbers)
            y <- rnorm(input$numbers)
        
        plot(x, y, col = 'darkgray', border = 'white')
        legend('topright', legend = paste('cor is', round(cor(x,y),4)))
        

    })
    
   
    

})
