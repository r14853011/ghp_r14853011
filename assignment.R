#Assignment 3 Research Methods 

#commit 1
# External packages used:
# - readr
library(readr)

# Load dataset
dengue_data <- read_csv("dengue_assignment.csv")

# Preview dataset
head(dengue_data)

# commit 2
# External packages used:
# - readr: for reading CSV files
# - dplyr: for data manipulation and summarization

library(readr)
library(dplyr)

# Load the dataset
dengue_data <- read_csv("dengue_assignment.csv")

# Calculate total cases reported in 2023
total_cases_2023 <- dengue_data %>%
  filter(year == 2023) %>%
  summarise(total_cases = sum(case_number, na.rm = TRUE))

# Print the result
print(total_cases_2023)