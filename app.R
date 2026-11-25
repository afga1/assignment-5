library(shiny)
library(shinydashboard)


ui<- dashboardPage(
  #create dashboard
  dashboardHeader(
  title = "Dig Trial Explorer"
  ),

  #create tabs items
  dashboardSidebar(),
  
  dashboardBody(
    tabBox(width=12, 
           tabPanel(
             "About",
             box(
               width = 12,
               title = "About",
               status = "primary",
               "Exploration of dataset"
             )
           ),
           tabPanel(
             "Development",
             box(
               width = 12,
               title = "Initial version",
               status = "warning"
             )
           )
           )
  )

)

#create server
server <- function(input, output){
  
}


shinyApp(ui, server)