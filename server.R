library("shiny")

data(mtcars)
sub = subset(mtcars, select= c("mpg", "cyl", "wt", "hp"))
fit = lm(mpg~., data = sub)

pred <- function(input){
  newdata = data.frame(cyl=input$cyl,wt=input$wt,hp=input$hp)
  result = predict(fit, newdata = newdata)[[1]]
  result
}

shinyServer(
  function(input, output) {
    output$prediction <- renderPrint({pred(input)})
  } 
)