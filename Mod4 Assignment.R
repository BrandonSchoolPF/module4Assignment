#Creating the Data Set 
Frequency <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
BP <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
First <- c("high", "high", "high", "high", "low", "low", "low", "low", NA, "high")
Second <- c("low", "low", "high", "high", "low", "low", "high", "high", "high", "high")
FinalDecision <- c("low", "high", "low", "high", "low", "high", "low", "high", "high", "high")

data <- data.frame(BP, First, Second, FinalDecision)

#Converting to factors
data$first <- as.factor(data$First)
data$Second <- as.factor(data$Second)
data$FinalDecision <- as.factor(data$FinalDecision)

#Creating Boxplots
box_plot_first <- boxplot(data$BP ~ data$First)
box_plot_first

box_plot_Second <- boxplot(data$BP ~ data$Second)
box_plot_Second

box_plot_FinalDecision <- boxplot(data$BP ~ data$FinalDecision)
box_plot_FinalDecision

#Creating Histogram
hist_graph <- hist(data$BP)
