shinyUI(fluidPage(
titlePanel("Iris Species Prediction App"),
sidebarPanel(
numericInput('Sepal.Length', 'Sepal Length in Centimeters', 5.8, min = 0, max = 10, step = .1),
numericInput('Sepal.Width', 'Sepal Width in Centimeters', 3, min = 0, max = 6, step = .1),
numericInput('Petal.Length', 'Petal Length in Centimeters', 4.3, min = 0, max = 10, step = .1),
numericInput('Petal.Width', 'Petal Width in Centimeters', 1.3, min = 0, max = 6, step = .1),
submitButton('Submit')
),
mainPanel(position = "center",
h2('Results'),
h4('Your flower has dimensions '),
verbatimTextOutput("inputValue"),
h4('Which yields a prediction of '),
verbatimTextOutput("prediction1"),
h4('An alternate model predicts your flower is '),
verbatimTextOutput("prediction2")
),
mainPanel(position = "center",
h2('Documentation'),
p('The Iris Species Prediction App uses two machine learning models with data from the Fisher/Anderson Iris study'),
p("Simply input the measurements of your flower's sepals and petals, and the app will attempt to determine what you have."),
p('The first model is a simple CART. The alternate model is a random forest. They should both be fairly accurate'),
p('If the two models disagree and you really care what kind of flower you have, you may wish to consult an expert.')
)
))
