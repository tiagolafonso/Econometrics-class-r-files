#class11 - Brief Inroduction to R
#this script is a brief introduction to R that may contain errors and/or omissions
#it is intended to be used as a guide for the class

# the "#" symbol is used to comment the code, it could be used to comment a line or a block of code

rm(list=ls()) #cleaning environment

# perform operations
2+2
6^2

# assign values to variables
a <- 2
b <- 6
c <- a+b
4 -> d

# remove objects from environment
rm(c)

# introduce vectors
x <- c(1,2,3,4,5)
y <- c(6,7,8,9,10)

# data frames - convert vectors (lists) to data frames
df <- data.frame(x,y)

# add x + y in the data frame
df$w <- df$x + df$y

# descriptive statistics
summary(df$x)

# calculate log(x)
df$lx <- log(df$x)

# remove a column from the data frame
df$lx <- NULL

rm(list=ls()) #cleaning environment


#load some packages
library(tidyverse)
library(stargazer)
library(moments)
library(magrittr)
library(readxl)

# get directory
getwd()

# read dataset - df <- data frame
df <- read.csv("simple_reg.csv")

#remove column "time" in df
df$time <- NULL

#mean of x
mean(df$x)

#descriptive statistics y
summary(df$y)

#descriptive statistics data frame
summary.data.frame(df)

#gen Log's
df$lx_ <- log(df$x)
df$ly_ <- log(df$y)

#or
#gen log's - %>% pipe operator
df <- df %>%
  mutate(lx=log(x),
         ly=log(y))

#plot data
plot(df$x,df$y)
plot(df$x,df$y,xlab="x",ylab="y",main = "x on y")

#plot data with fitted line
plot(df$x,df$y,xlab="x",ylab="y",main = "x on y")
abline(lm(df$y~df$x))

#plot with ggplot2
ggplot(data=df,
       mapping = aes(x=x,y=y))+
  geom_point()

#plot with ggplot2 with fitted line
ggplot(data=df,
       mapping = aes(x=x,y=y))+
  geom_point()+
  geom_smooth(method = "lm",se=FALSE)

ggplot(data=df,
       mapping = aes(x=x,y=y))+
  geom_point(colour="blue",size=1)+
  geom_smooth(method = "lm",se=FALSE, colour="red")

#boxplot
boxplot(df$x)

#boxplot with ggplot2
ggplot(df, aes(y=y,x=""))+
  geom_errorbar(stat="boxplot",width=0.2)+
  geom_boxplot(width=0.6, fill="grey90",
               outlier.shape=1, outlier.size = 2)+
  theme_classic()

#histogram
hist(df$y, xlab = "y")

#histogram with ggplot2
ggplot(df, aes(x=y)) +
  geom_histogram(binwidth=1, fill="blue", color="black", alpha=0.7) +
  labs(title="Histogram of y", x="y", y="Frequency") +
  theme_minimal()

#correlations among variables
cor(df$y,df$x)

#correlation matrix for all variables
cor(df)

#estimate model
model <- lm(data=df,formula=y~x)
summary(model)

model1 <- lm(y~x,df)
summary(model1)

#obtain fitted/predicted values
y_p <- fitted(model)

#obtain residuals
res <- resid(model)

df <- cbind(df,y_p,res)

rm(res)
rm(y_p)