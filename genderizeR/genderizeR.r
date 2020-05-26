# ----------------------------------------------------------------------
# Guess your gender with Tableau & R
# Author: Juan Manuel Perafan
# 
# (C) 2020 Biztory
# https://www.linkedin.com/posts/biztory_biztorydigital-genderguess-tableau-activity-6651468113948758016-yru4
# ----------------------------------------------------------------------

# Choose a name to predict
name_to_predict <- "Juan"

# Predict if name is male of female
prediction <- genderizeR::findGivenNames(name_to_predict, progress = FALSE)

# Create a dataframe with the output of the prediction
data <- data.frame(
    timestamp = Sys.time()
    , name = prediction$name[1]
    , gender = prediction$gender[1]
    , probability = prediction$probability[1]
)

# Append the prediction into the csv
write.table(
    df
    , file = 'genderizeR/data/genderizer.csv'
    , sep = ','
    , append = TRUE
    , quote = FALSE
    , col.names = FALSE
    , row.names = FALSE
)

# Print the gender predicted
print(prediction$gender[1])