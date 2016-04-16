library(shiny)

probability1 <- function(CardsDrawn) round(1 / (30 - CardsDrawn),2)
probability2 <- function(CardsDrawn) round(2 / (30 - CardsDrawn),2)

shinyServer(function(input, output) {
        output$inputValue <- renderPrint({input$CardsDrawn})
        output$probability1 <- renderPrint({probability1(input$CardsDrawn)})
        output$probability2 <- renderPrint({probability2(input$CardsDrawn)})
}
)