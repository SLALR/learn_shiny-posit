
# Server logic
server <- function(input, output) {
  
  observe({
    print(input$dates)
    print(paste0("Here we go first date ", input$dates[1]))
    print(paste0("Here we go second date ", input$dates[2]))
    print(getwd())
  })


  dataInput <- reactive({
    getSymbols(input$symb, src = "yahoo",
               from = input$dates[1],
               to = input$dates[2],
               auto.assign = FALSE)
  })

  output$plot <- renderPlot({
    print(dataInput())

    chartSeries(dataInput(), theme = chartTheme("white"),
                type = "line", log.scale = input$log, TA = NULL)
  })
  
}
