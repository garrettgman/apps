
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {

  output$response <- renderUI({
    validate(need(!is.na(input$ans), "Please select an answer"))
    
    if (input$ans == 42) {
      tags$video(src = "right.mp4", type = "video/mp4", 
        autoplay = NA, controls = NA, width = "500px", 
        height = "300px")
    } else {
      tags$video(src = "wrong.mp4", type = "video/mp4", 
        autoplay = NA, controls = NA, width = "500px", 
        height = "300px")
    }
  })

})
