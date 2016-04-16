library(shiny)

shinyUI(pageWithSidebar(
  titlePanel("Hearthstone Drawing Probabilities"),
  sidebarPanel(
          sliderInput('CardsDrawn','Number Of Cards Drawn', value = 0, min = 0, max = 30, step = 1)
  ),
    mainPanel(
            h3('Results of drawing probabilities calculation'),
            h4('You have drawn that many cards:'),
            verbatimTextOutput("inputValue"),
            h4('You have the following probability to draw any cards which has 1 copy in your remaining deck:'),
            verbatimTextOutput("probability1"),
            h4('You have the following probability to draw any cards which has 2 copies in your remaining deck:'),
            verbatimTextOutput("probability2")
    )
  )
)
