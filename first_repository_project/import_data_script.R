#here is my data import code
library(pacman)
pacman::p_load(rio, here)
alzheimers_data <- import(here("Data", "alzheimers_data_cleaned"))

library(pacman)
pacman::p_load(rio, here)

alzheimers_data <- import(here("Data", "alzheimers_data_clean.csv"))

names(alzheimers_data)


# Creating a plot

library(ggplot2)

ggplot(alzheimers_data, aes(x = age, fill = diagnosis)) +
  geom_histogram(bins = 20, alpha = 0.7) +
  labs(
    title = "Age Distribution by Diagnosis",
    x = "Age",
    y = "Number of Patients",
    fill = "Diagnosis"
  ) +
  theme_minimal()
