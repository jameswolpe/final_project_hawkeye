library(shiny)
library(tidyverse)
df <- read_csv("merge3.csv")

df <- df %>% filter(ultimate_shot == FALSE)

merge3sum <- df %>% filter(player == "Nick Kyrgios",
           stroke == "b",
           direction == 3,
           ultimate_shot == FALSE,
           stroke_after == "b") %>% 

ggplot(data = merge3sum, aes(x = direction_after, y = count)) +
  geom_col()

df_oneplayer

ui <- fluidPage(
  sidebarLayout(
    sidebarPanel(selectizeInput(inputId = "playerselect",
                                label = "Choose a Player",
                                choices = levels(factor(df$player))),
                 radioButtons(inputId = "strokeselect",
                              label = "Select the incoming Stroke",
                              choices = unique(df$stroke)),
                 radioButtons(inputId = "strokeafterselect",
                              label = "Select the outgoing Stroke",
                              choices = unique(df$stroke_after)),
                 radioButtons(inputId = "directionafter",
                              label = "Select the incoming direction",
                              choices = unique(df$direction_after))),
    
    mainPanel(plotOutput("colplot"))
    
  )
)


server <- function(input, output, session) {
  
  df_oneplayer <- reactive({
    df %>% filter(player == input$playerselect,
                  stroke == input$strokeselect,
                  stroke_after == input$strokeafterselect,
                  direction == input$directionafter)%>% 
      group_by(direction_after) %>%
      summarise(count = n())
  })
  output$colplot <- renderPlot({
    ggplot(data = df_oneplayer(), aes(x = direction_after, y = count)) +
      geom_col()
  })
}
shinyApp(ui, server)
