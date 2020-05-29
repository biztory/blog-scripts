# ----------------------------------------------------------------------
# Simple linear regressions - slope and intercept analytics via Tableau
# Author: Ashleigh Trinh
# 
# (C) 2020 Biztory
# https://www.biztory.com/blog/geocoding-with-r-in-tableau
# ----------------------------------------------------------------------

# Import libraries
library(ggplot2)
library(ggmap)

# Choose a location
# This is just an example
Location <- "London Bridge"

# Getting the Google geocode
loc <- geocode(
    Location
    , output = " latlon"
    , source = "google"
)

# Latitude
loc$lat

# Longitude
loc$lon