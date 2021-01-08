library(ggplot2)
# install.packages("e1071")
library(caret)
library(lattice)
library(e1071)
library(pROC)

## Import
BreastCancer <- read.table("data/BreastCancer.csv", sep = ";", header=TRUE)


## Exploration
head(BreastCancer)
summary(BreastCancer)
str(BreastCancer)

# Effectif des groupes
table(BreastCancer$Class)

## Separation train / test
n <- nrow(BreastCancer)

train_index <- sample(x = 1:n, size = round(0.7 * n), replace = FALSE)

train_data <- BreastCancer[train_index,]
test_data <- BreastCancer[-train_index,]

## modele de regression
log_reg <- glm(formula = Class ~ ., data = train_data)

coef(log_reg)
summary(log_reg)

## Backward Selection

back_sel <- step(log_reg, direction="backward")
summary(back_sel)


## Valeurs prédites
hat_pi_R <- predict(log_reg, type="response", newdata = test_data)
hat_y_R <- as.integer(hat_pi_R > 0.5)

hat_pi_back <- predict(back_sel, type="response", newdata = test_data)
hat_y_back <- as.integer(hat_pi_back > 0.5)

## Matrice de confusion
table(hat_y_R, test_data$Class)
table(hat_y_back, test_data$Class)

## Selection du seuil

sensibility <- function(threshold, hat_pi, df) {
  out <- sum(as.integer(hat_pi > threshold) == 1 &
               df$Class == 1)/sum(df$Class == 1)
  return(out)
}

specificity <- function(threshold, hat_pi, df) {
  out <- sum(as.integer(hat_pi > threshold) == 0 &
               df$Class == 0)/sum(df$Class == 0)
  return(out)
}

threshold <- seq(0, 1, 0.005)


## visualisation sens et spec

vis_sens_spec <- function(hat_pi_x){
  
  sens <- sapply(threshold, sensibility, hat_pi = hat_pi_x, df = test_data)
  spec <- sapply(threshold, specificity, hat_pi = hat_pi_x, df = test_data)
  
  data2plot_ss <- data.frame(threshold=rep(threshold,2),
                        value=c(sens, spec),
                        tag=rep(c("sensitivity", "specificity"),
                                each = length(threshold)))

  ggplot(data2plot_ss, aes(x=threshold, y=value)) +
    geom_line(aes(col=tag)) +
    theme_bw() + theme(legend.title = element_blank())
}

vis_sens_spec(hat_pi_R)
vis_sens_spec(hat_pi_back)

## courbe roc et auc
# ROC

vis_roc <- function(hat_pi_x) {
  
  sens <- sapply(threshold, sensibility, hat_pi = hat_pi_x, df = test_data)
  spec <- sapply(threshold, specificity, hat_pi = hat_pi_x, df = test_data)
  
  data2plot_roc <- data.frame(threshold=threshold,
                        sensitivity=sens,
                        specificity=spec)
  ggplot(data2plot_roc, aes(x=1 - specificity, y=sensitivity)) +
    geom_line() + theme_bw()
}

vis_roc(hat_pi_R)
vis_roc(hat_pi_back)

# AUC
auc(test_data$Class, hat_pi_R)
auc(test_data$Class, hat_pi_back)
