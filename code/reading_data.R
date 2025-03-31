library(tidyverse)

folder_path <- "C:/Users/chenr/Documents/Coursera/Google Analytics/R/Case-Studies/raw_data"

csv_files <- list.files(path = folder_path, pattern = "\\.csv$", full.names = TRUE)

combined_data <- map_dfr(csv_files, function(file_path) {
  read_csv(file_path, show_col_types = FALSE)
})

write.csv(combined_data,"C:/Users/chenr/Documents/Coursera/Google Analytics/R/Case-Studies/raw_data/combined_data.csv")
