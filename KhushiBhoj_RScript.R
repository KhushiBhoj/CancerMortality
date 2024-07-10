# Author: Khushi Bhoj

# Load the dataset (df)

# Select only numeric columns from the dataframe
numeric_df <- df[, sapply(df, is.numeric)]

# Calculate the correlation matrix
cor(numeric_df)

lm_model <- lm(incidenceRate ~ medIncome + PovertyEst, data = df)
summary(lm_model)

lm_model2 <- lm(incidenceRate ~ medIncome + PovertyEst + popEst2015, data = df)
summary(lm_model2)

lm_model3 <- lm(incidenceRate ~ medIncome + PovertyEst + avgAnnCount, data = df)
summary(lm_model3)

plot(lm_model3, which = 1)

acf(lm_model$residuals)

install.packages("car")
library(car)

vif(lm_model3)
