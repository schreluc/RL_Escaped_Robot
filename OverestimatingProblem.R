#####
# EVA1 Luc Schreiber
# ZHAW Init
# 13.02.2020
####

#----------------------------------------------------
## Deep-Q-Learning Overestimating Problem
#----------------------------------------------------
library(ggplot2)

# Example with a dice, throw it three times and calculate the mean and the max value
sol1 <- NULL
sol2 <- NULL
for(k in 1:10000){
  samp <- sample(x = 1:6 , size = 3, replace = TRUE)
  sol1 <- c(sol1,mean(samp))
  sol2 <- c(sol2,max(samp))
}

sol1_df <- data.frame(Expected = sol1)
sol2_df <- data.frame(Expected = sol2)

sol1_df$SimType <- 'mean'
sol2_df$SimType <- 'max'

df <- rbind(sol1_df, sol2_df)

ggplot(df, aes(Expected, fill = SimType)) +
  geom_density(alpha = 0.2) + ggtitle("Simulation with 3 dices")







# Example with random variables N(0,1)


sol1 <- NULL
sol2 <- NULL
for(k in 1:10000){
  samp <- rnorm(3)
  sol1 <- c(sol1,mean(samp))
  sol2 <- c(sol2,max(samp))
}


sol1_df <- data.frame(Expected = sol1)
sol2_df <- data.frame(Expected = sol2)

sol1_df$SimType <- 'mean'
sol2_df$SimType <- 'max'

df <- rbind(sol1_df, sol2_df)

ggplot(df, aes(Expected, fill = SimType)) +
  geom_density(alpha = 0.2) +  ggtitle("Simulation with 3 random variables N(0,1)")



