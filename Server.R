library(caret)
library(randomForest)
shinyServer(function(input, output) {
load("fit.Rdata")
load("fit2.Rdata")
output$inputValue <- renderPrint(c({input$Sepal.Length},{input$Sepal.Width},{input$Petal.Length},{input$Petal.Width}))
output$prediction1 <- renderPrint(predict(fit1,data.frame(Sepal.Length={input$Sepal.Length},Sepal.Width={input$Sepal.Width},Petal.Length={input$Petal.Length},Petal.Width={input$Petal.Width})))
output$prediction2 <- renderPrint(predict(fit2,data.frame(Sepal.Length={input$Sepal.Length},Sepal.Width={input$Sepal.Width},Petal.Length={input$Petal.Length},Petal.Width={input$Petal.Width})))
})
