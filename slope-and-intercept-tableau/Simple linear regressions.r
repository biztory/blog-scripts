# ----------------------------------------------------------------------
# Simple linear regressions - slope and intercept analytics via Tableau
# Author: Catalina Fluerici
# 
# (C) 2017 Biztory
# https://www.biztory.com/blog/2017/02/28/slope-and-intercept-tableau
# ----------------------------------------------------------------------

# Read data
data <- read.csv('slope-and-intercept-tableau/data/athlete.csv')

# Slope
mod <- lm(`Heart.Rate` ~ `Running.Speed`, data = data)

# Output
mod$coeff[[1]] # Intercept
mod$coeff[[2]] # Slope