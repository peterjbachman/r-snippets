# OBJECTIVE: To pull in the Zip Codes for the data

# PACKAGES ---------------------------------------------------------------------
library(tidyverse)
library(data.table)
library(revgeo)

# CODE -------------------------------------------------------------------------

# Pull the zip code based on the longitude and latitude of observations

# REQUIREMENTS:
# - Data set named "main"
# - Data has variables names "longitude" and "latitude"

zip <- sapply(seq(nrow(main)), function(i){
  revgeo(main$longitude[i], main$latitude[i], output = "frame")[5]
})
