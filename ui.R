#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
# 
#    http://shiny.rstudio.com/
#
library(shiny)

# Define UI for iris app
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Scatter plot and relationships between features"),
  
  # Sidebar with controls to select the variables to plot 
  sidebarPanel(
    
    h4("Chose two features to be plotted:"),
    selectInput("variable1", "Feature 1:",
                list("Sepal length" = "Sepal.Length",
                     "Sepal width"  = "Sepal.Width",
                     "Petal length" = "Petal.Length",
                     "Petal width"  = "Petal.Width")),
    
    selectInput("variable2", "Feature 2:",
                list("Petal length" = "Petal.Length",
                     "Petal width"  = "Petal.Width",
                     "Sepal length" = "Sepal.Length",
                     "Sepal width"  = "Sepal.Width"))
  ),
  
  mainPanel(
    tabsetPanel(
      tabPanel("Graphics", 
               h3 ("Features plotted below are:"),
               h3(textOutput("caption")),
               plotOutput("plot"))
    ))
))