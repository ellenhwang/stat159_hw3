##################################################
# Regression Analysis
##################################################
# libraries
library(ggplot2)

# Import data
advertising <- read.csv('../../data/Advertising.csv')
advertising['X'] <- NULL


# ************************************************
# Regression
# ************************************************
mult_reg <- lm(Sales ~ TV + Newspaper + Radio, data = advertising)
summary_mult_reg <- summary(mult_reg)
save(mult_reg, summary_mult_reg, file = "../../data/regression.RData")

# ************************************************
# Regression Scatter Plot
# ************************************************
# Scatter Plot of Sales on TV
scatter_tv_sales <- ggplot(advertising, aes(x = TV, y = Sales)) + geom_point(alpha = 0.6, colour = '#660000') + geom_smooth(method = 'lm') +
  ggtitle("Scatter Plot: TV vs Sales")
scatter_tv_sales

# Scatter Plot of Sales on Radio 
scatter_radio_sales <- ggplot(advertising, aes(x = Radio, y = Sales)) + geom_point(alpha = 0.6, colour = '#006400') + geom_smooth(method = 'lm') +
  ggtitle("Scatter Plot: Radio vs Sales")
scatter_radio_sales

# Scatter Plot of Sales on Newspaper 
scatter_tv_newspaper <- ggplot(advertising, aes(x = Newspaper, y = Sales)) + geom_point(alpha = 0.6, colour = '#2E0854') + geom_smooth(method = 'lm') +
  ggtitle("Scatter Plot: Newspaper vs Sales")
scatter_tv_newspaper

# Residual Plot
plot(mult_reg, which = 1)

# Normal Q-Q Plot
plot(mult_reg, which = 2)

# Scale-Location Plot
plot(mult_reg, which = 3)

# ************************************************
# Export Visualizations
# ************************************************
png('../../images/scatter-tv-sales.png')
scatter_tv_sales
dev.off()

png('../../images/scatter-radio-sales.png')
scatter_radio_sales
dev.off()

png('../../images/scatter-newspaper-sales.png')
scatter_tv_newspaper
dev.off()

png('../../images/residual-plot.png')
plot(mult_reg, which = 1)
dev.off()

png('../../images/normal-qq-plot.png')
plot(mult_reg, which = 2)
dev.off()

png('../../images/scale-location-plot.png')
plot(mult_reg, which = 3)
dev.off()
