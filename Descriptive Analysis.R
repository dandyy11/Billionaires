library(readxl)
library(dplyr)
library(ggplot2)

# Load the dataset
billionaires <- read_excel("E:/Baylor Material/STA 5V85 - Capstone/Billionairres.csv")

# Basic overview
total_billionaires <- nrow(billionaires)
average_net_worth <- mean(billionaires$NetWorth)
average_age <- mean(billionaires$Age, na.rm = TRUE) # Handling missing values
unique_industries <- length(unique(billionaires$industries))
unique_citizenships <- length(unique(billionaires$Citizenship))

# Gender distribution
gender_distribution <- table(billionaires$Gender) / total_billionaires * 100

# Status distribution
status_distribution <- table(billionaires$Status) / total_billionaires * 100

# Print overview
cat("Total Billionaires:", total_billionaires, "\n")
cat("Average Net Worth:", average_net_worth, "\n")
cat("Average Age:", average_age, "\n")
