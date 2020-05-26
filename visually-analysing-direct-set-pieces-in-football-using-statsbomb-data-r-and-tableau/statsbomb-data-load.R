# ----------------------------------------------------------------------
# Visually Analysing Direct Set Pieces in Football using StatsBomb Data, R and Tableau
# Author: James Smith
# 
# (C) 2020 Biztory
# https://www.biztory.com/blog/visually-analysing-direct-set-pieces-in-football-using-statsbomb-data-r-and-tableau
# ----------------------------------------------------------------------

# Installing dependancies
    # devtools::install_github("statsbomb/StatsBombR") 
    # install.packages("dplyr")

# Loading packages
    library(StatsBombR)
    library(dplyr)

# FreeCompetitions() pulls data of all of the matches available
Comp <- FreeCompetitions() %>%
    # This line keeps only data for competition 11
    filter(competition_id == 11)

# This shows the available matches within the competition chosen
Matches <- FreeMatches(Comp)

# This pulls all the event data for the mathes that chosen
StatsBombData <- StatsBombFreeEvents(MatchesDF = Matches, Parallel = TRUE)

# Pulls information including x/y coordinates
StatsBombData = allclean(StatsBombData)
Samplestats <- StatsBombData %>%
    select(-tactics.lineup)

## NOTE - For more information on StatsBombR check the link below: 
# http://statsbomb.com/wp-content/uploads/2019/12/Using-StatsBomb-Data-In-R.pdf