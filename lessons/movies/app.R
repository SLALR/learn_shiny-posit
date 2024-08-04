library(shiny)
library(bslib)

ui <- page_sidebar(
  sidebar = sidebar (
   textInput(
    inputId = "custom_text",
    label = "Input some text here:"
  )   
  ),
  
  strong("Text is shown below:"),

  card(shiny::textOutput(outputId = "user_text"))

)

server <- function(input, output, session){

  output$user_text <- renderText({input$custom_text})

}

shinyApp(ui = ui, server = server)