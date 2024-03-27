install.packages("randomForest")
install.packages("caret")

library(randomForest)
library(caret)

# Prepare the data
features <- billionaires[c("Age", "gdp_country", "population_country", "life_expectancy_country")]
features$Age[is.na(features$Age)] <- mean(features$Age, na.rm = TRUE) # Fill missing Age with mean
target <- billionaires$NetWorth

# Split the data into training and testing sets
set.seed(42)
trainIndex <- createDataPartition(target, p = .8, list = FALSE)
train <- features[trainIndex, ]
test <- features[-trainIndex, ]
train_target <- target[trainIndex]
test_target <- target[-trainIndex]

# Train the Random Forest model
rf_model <- randomForest(train, train_target)

# Predict on the test set
predictions <- predict(rf_model, newdata = test)

# Calculate Mean Absolute Error
mae <- mean(abs(predictions - test_target))
print(paste("MAE:", mae))
