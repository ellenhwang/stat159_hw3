##################################################
# Exploratory Data Analysis
##################################################
# libraries
library(ggplot2)
library(corrplot)
library(GGally)

# Import data
advertising <- read.csv('../../data/Advertising.csv')
advertising['X'] <- NULL

# Exploration and Summary Statistics
str(advertising)
correlation_matrix <- cor(advertising)

sink('eda-output.txt')
correlation_matrix
summary(advertising)
sink(NULL)

save(correlation_matrix, file = "../../data/correlation-matrix.RData")
# ************************************************
# Visualizations
# ************************************************
# histogram of sales
hist_sales <- ggplot(advertising, aes(x = Sales)) + geom_histogram(aes(y = ..density.., fill = ..density..), binwidth = 1) +
                  geom_density() + scale_fill_gradient("Density", low = '#9BC4E2', high = '#0D4F8B') + ggtitle("Histogram of Sales") 

# histogram of tv
hist_tv <- ggplot(advertising, aes(x = TV)) + geom_histogram(aes(y = ..density.., fill = ..density..), binwidth = 10) +
                  geom_density() + scale_fill_gradient("Density", low = '#CD9B9B', high = '#660000') + ggtitle("Histogram of TV") 

# histogram of radio
hist_radio <- ggplot(advertising, aes(x = Radio)) + geom_histogram(aes(y = ..density.., fill = ..density..), binwidth = 5) +
                  geom_density() + scale_fill_gradient("Density", low = 'palegreen', high = '#006400') + ggtitle("Histogram of TV") 

# histogram of newspaper
hist_newspaper <- ggplot(advertising, aes(x = Newspaper)) + geom_histogram(aes(y = ..density.., fill = ..density..), binwidth = 10) +
                  geom_density() + scale_fill_gradient("Density", low = '#DDA0DD', high = '#2E0854') + ggtitle("Histogram of TV") 

# correlation plot between all variables
corr_plot <- corrplot(cor(advertising))

# Scatter Plot Matrix of All Variables
scatter_matrix <- ggpairs(advertising[,1:4], title = "Scatter Plot Matrix of All Variables")

# ************************************************
# Export Visualizations
# ************************************************

png('../../images/histogram-sales.png')
hist_sales
dev.off()

png('../../images/histogram-tv.png')
hist_tv
dev.off()

png('../../images/histogram-radio.png')
hist_radio
dev.off()

png('../../images/histogram-newspaper.png')
hist_newspaper
dev.off()

png('../../images/scatterplot-matrix.png')
scatter_matrix
dev.off()
