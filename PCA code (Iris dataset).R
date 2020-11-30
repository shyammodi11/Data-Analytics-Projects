head(iris)
library(ggfortify)
data_iris <- iris[1:4]
Cov_data <- cov(data_iris)
Eigen_data <- eigen(Cov_data)
PCA_data <- prcomp(data_iris, cor="False", scale. = TRUE )

Eigen_data$values
PCA_data$sdev^2

PCA_data$loadings[ ,1:4] 
Eigen_data$vectors

summary(PCA_data)

biplot(PCA_data)

autoplot(PCA_data, data = iris, colour = 'Species')

autoplot(PCA_data, data = iris, colour = 'Species', 
         shape = FALSE, label.size = 3)

autoplot(PCA_data, data = iris, colour = 'Species', 
         loadings = TRUE, loadings.colour = 'blue',
         loadings.label = TRUE, loadings.label.size = 3)

screeplot(PCA_data, type ="lines")

data("iris")

