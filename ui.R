library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("MPG Predictor"), 
  sidebarPanel(
    numericInput('wt', 'Weight (In tons)', 2.0, min = 0.1, max = 10, step = 0.1), 
    numericInput('cyl', 'Number of Cylinders', 6, min = 0, max = 14, step = 2), 
    numericInput('hp', 'Horsepower', 150, min = 10, max = 1000, step = 10), 
    submitButton('Submit')
  ),
  mainPanel(
    h3('Instructions:'),
    h4('Fill in the information about the weight in tons, horsepower, and number of cylinders of you car,
       and predicted miles per gallon will be returned.deploy'),
    h3('Predicted MPG:'),
    verbatimTextOutput("prediction")
  ) ))