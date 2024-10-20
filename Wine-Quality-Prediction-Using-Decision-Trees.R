# Get the current working directory
getwd()
# Load the white wine dataset from a CSV file
wine <- read.csv("C:/Users/Hirdesh Kumar Yadav/Downloads/R Predictive Analysis/whitewines.csv")
# Display the structure of the dataset (column names, data types, etc.)
str(wine)
# Plot a histogram of the wine quality to see its distribution
hist(wine$quality)
# Show a summary of the dataset (min, max, mean, etc.)
summary(wine)
# Split the dataset into training (rows 1 to 3750) and test sets (rows 3751 to 4898)
wine_train <- wine[1:3750, ]
wine_test <- wine[3751:4898, ]
# Load the rpart library for creating decision trees
install.packages("rpart")
library(rpart)
# Train a decision tree model to predict wine quality based on all other features
m.rpart <- rpart(quality ~ ., data = wine_train)
# Load the rpart.plot library for plotting decision trees
library(rpart.plot)
# Plot the decision tree model with 3 decimal places for node values
rpart.plot(m.rpart, digits = 3)
# Plot the decision tree with 4 decimal places, fallen leaves, and additional information in the nodes
rpart.plot(m.rpart, digits = 4, 
           fallen.leaves = TRUE,
           type = 3, extra = 101)

# Use the trained model to predict wine quality on the test set
p.rpart <- predict(m.rpart, wine_test)
# Display a summary of the predicted quality values
summary(p.rpart)
# Display a summary of the actual wine quality values in the test set
summary(wine_test$quality)
# Calculate the correlation between the predicted and actual quality values
cor(p.rpart, wine_test$quality)
# Define a function to calculate Mean Absolute Error (MAE)
MAE <- function(actual, predicted) {
  mean(abs(actual - predicted))
}

# Calculate the MAE between the predicted and actual wine quality values
MAE(p.rpart, wine_test$quality)
# Calculate the mean quality value from the training set
mean(wine_train$quality)
# Calculate the MAE using the mean quality (5.88) as the predicted value
MAE(5.88, wine_test$quality)
