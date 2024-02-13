
#### Preamble ####
# Purpose: Downloads and saves the data from the Replication Package
# Author: Hailey Jang & Joe Zhou
# Date: 13 February 2024 
# Contact: Hailey.Jang@mail.utoronto.ca
# License: MIT
# Pre-requisites: Download the Replication Package of the Paper through the below URL
# Any other information needed? URL: https://osf.io/d2e6s/

#### Workspace setup ####
# install.packages("tidyverse")

# load library
library(tidyverse)

#### Load data ####
# Define the URLs of the files to download
urls <- c(
  "https://mfr.osf.io/render?url=https://osf.io/download/v9mrb/?direct%26mode=render"
  ,
  "https://mfr.osf.io/render?url=https://osf.io/download/phmx7/?direct%26mode=render"
)

# Define file names to save
file_names <- c("FW satisfaction-Study 1-data.csv", "FW satisfaction-Study 2-data.csv")

#### Save data ####
for (i in 1:length(urls)) {
  download.file(urls[i], destfile = file_names[i], mode = "wb")
  cat("Downloaded", file_names[i], "\n")
}




