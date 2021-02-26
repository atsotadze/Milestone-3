#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- navbarPage(
    "Final Project Title",
    tabPanel("Model",
             fluidPage(
                 titlePanel("Model Title"),
                 sidebarLayout(
                     sidebarPanel(
                         selectInput(
                             "plot_type",
                             "Plot Type",
                             c("Option A" = "a", "Option B" = "b")
                         )),
                     mainPanel(plotOutput("line_plot")))
             )),
    tabPanel("Discussion", 
             titlePanel("Discussion Title"),
              p("Tour of the modeling choices you made and 
                an explanation of why you made them")),
    tabPanel("About", 
             titlePanel("About"),
              h3("Project Background and Motivations"), 
              p("In this project I will look to conduct analysis on the effects of COVID-19 on domestic violence.
                Due to the global pandemic, families and households have been forced into extended isolation. With this increased 
                isolation, I want to analyze the effects of COVID-19 on domestic violence. I will leveraging the 
                COVID-19 Case Surveillance Public Use Data as well as The Bureau of Justice Statistics' (BJS) 
                National Crime Victimization Survey (NCVS) which is the nation's primary source of information on criminal
                victimization. Each year, data are obtained from a nationally representative sample of about 240,000 
                interviews on criminal victimization, involving 160,000 unique persons in about 95,000 households."), 
              p("Link to my github repo: ")
              h3("About Me"),
              p("My name is Alex Tsotadze and I study Economics.
                 You can reach me at atsotadze@college.harvard.edu.")))

# Define server logic required to draw a histogram
server <- function(input, output) {}

# Run the application 
shinyApp(ui = ui, server = server)
