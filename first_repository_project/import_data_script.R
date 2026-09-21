#here is my data import code
library(pacman)
pacman::p_load(rio, here)
alzheimers_data <- import(here("Data", "alzheimers_data_cleaned"))
