library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("What is the answer to the Ultimate Question of Life, the Universe, and Everything?"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      helpText("Please enter your answer below. 
               The correct answer is 42. Everything else is wrong. 
               Try several answers."),
      numericInput("ans", "Your answer:",
                  value = NA),
      submitButton("submit")
    ),

    # Show a plot of the generated distribution
    mainPanel(
      uiOutput("response")
    )
  )
))
