##########################################
# Functions
##########################################

# Residual Sum of Squares (RSS): Takes in lm() object and returns RSS value
residual_sum_squares <- function(regression_object) {
  sum(regression_object$residuals^2)
}

# Total Sum of Squares (TSS): Takes in lm() object and returns TSS value
total_sum_squares <- function(regression_object) {
  rss <- residual_sum_squares(regression_object)
  r2 <- summary(regression_object)$r.squared
  rss/(1-r2)
}

# R Squared: Takes in lm() object and returns R squared value
r_squared <- function(regression_object) {
  summary(regression_object)$r.squared
}

# F-Statistic: Takes in lm() object and returns F-Statistic value
f_statistic <- function(regression_object) {
  summary(regression_object)$fstatistic
}

# Residual Standard Error (RSE): Takes in lm() object and returns RSE
residual_std_error <- function(regression_object) {
  sqrt(deviance(regression_object)/df.residual(regression_object))
}
