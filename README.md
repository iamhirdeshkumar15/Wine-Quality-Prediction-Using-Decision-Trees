# Wine-Quality-Prediction-Using-Decision-Trees
This project predicts wine quality using decision trees based on physicochemical properties of white wine. Features like acidity, alcohol content, and pH are used to train the model. The R script trains and evaluates the model, visualizes the decision tree, and calculates prediction accuracy.

This project predicts wine quality based on its physicochemical properties using a decision tree model.

## Dataset
The dataset used is **whitewines.csv**, containing:
- Multiple features such as acidity, pH, alcohol percentage, etc.
- A `quality` column indicating the wine's quality (target variable).

## R Script
The R script performs the following:
1. Loads and explores the dataset.
2. Splits the dataset into training and test sets.
3. Trains a decision tree model to predict wine quality based on the given features.
4. Visualizes the trained decision tree using the `rpart.plot` library.
5. Predicts wine quality on the test set and calculates the model's accuracy using Mean Absolute Error (MAE).

## How to Run
1. Clone this repository:
   ```bash
   git clone https://github.com/iamhirdeshkumar15/Wine-Quality-Prediction-Using-Decision-Trees.git
