# Load necessary libraries
library(ggplot2)
library(gridExtra)

# Load the mtcars dataset
data(mtcars)

# Create the individual plots

# First row: Histogram and Bar chart
p1 <- ggplot(mtcars, aes(x=mpg)) + 
  geom_histogram(binwidth=2, fill="blue", color="black") + 
  ggtitle("Histogram of MPG")

p2 <- ggplot(mtcars, aes(x=factor(cyl))) + 
  geom_bar(fill="green") + 
  ggtitle("Bar Chart of Cylinders")

# Second row: Box plots
p3 <- ggplot(mtcars, aes(x=factor(cyl), y=mpg)) + 
  geom_boxplot(fill="orange") + 
  ggtitle("Box Plot of MPG by Cylinders")

p4 <- ggplot(mtcars, aes(x=factor(gear), y=hp)) + 
  geom_boxplot(fill="purple") + 
  ggtitle("Box Plot of HP by Gears")

# Third row: Scatter plots
p5 <- ggplot(mtcars, aes(x=wt, y=mpg)) + 
  geom_point(color="red") + 
  ggtitle("Scatter Plot of MPG vs Weight")

p6 <- ggplot(mtcars, aes(x=disp, y=hp)) + 
  geom_point(color="blue") + 
  ggtitle("Scatter Plot of HP vs Displacement")

# Fourth row: Scatter plots with regression lines
p7 <- ggplot(mtcars, aes(x=wt, y=mpg)) + 
  geom_point(color="red") + 
  geom_smooth(method="lm", color="blue") + 
  ggtitle("Scatter Plot with Regression Line: MPG vs Weight")

p8 <- ggplot(mtcars, aes(x=disp, y=hp)) + 
  geom_point(color="blue") + 
  geom_smooth(method="lm", color="red") + 
  ggtitle("Scatter Plot with Regression Line: HP vs Displacement")

# Arrange plots in a grid
grid.arrange(p1, p2, p3, p4, p5, p6, p7, p8, nrow=4, ncol=2)
