# Assignment_6_Mirzoakbar


Sure! Below is a README file for the provided R script:

---

# README

## Overview

This project uses the `ggplot2` and `gridExtra` libraries in R to create a grid of 8 graphs, arranged in 4 rows and 2 columns. The graphs include histograms, bar charts, box plots, scatter plots, and scatter plots with regression lines, all based on the built-in `mtcars` dataset.

## Requirements

- R (version 4.0 or higher recommended)
- The following R packages:
  - `ggplot2`
  - `gridExtra`

You can install the required packages using the following commands in your R console:

```R
install.packages("ggplot2")
install.packages("gridExtra")
```

## Instructions

1. **Clone the Repository**: Clone this repository to your local machine.

2. **Open the R Script**: Open the `plot_grid.R` script in your R environment (e.g., RStudio).

3. **Run the Script**: Execute the script to generate the grid of plots. The script will create 8 different plots and arrange them in a 4x2 grid layout.

## Script Details

### Data

The script uses the built-in `mtcars` dataset, which contains various car attributes.

### Plot Details

- **First Row**:
  - **Histogram**: Histogram of miles per gallon (`mpg`).
  - **Bar Chart**: Bar chart of the number of cylinders (`cyl`).

- **Second Row**:
  - **Box Plot**: Box plot of miles per gallon (`mpg`) by the number of cylinders (`cyl`).
  - **Box Plot**: Box plot of horsepower (`hp`) by the number of gears (`gear`).

- **Third Row**:
  - **Scatter Plot**: Scatter plot of miles per gallon (`mpg`) versus weight (`wt`).
  - **Scatter Plot**: Scatter plot of horsepower (`hp`) versus displacement (`disp`).

- **Fourth Row**:
  - **Scatter Plot with Regression Line**: Scatter plot of miles per gallon (`mpg`) versus weight (`wt`) with a regression line.
  - **Scatter Plot with Regression Line**: Scatter plot of horsepower (`hp`) versus displacement (`disp`) with a regression line.

### Code

Here is the R script:

```r
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
```

## Output

The script generates a single output, which is a grid of 8 plots arranged in a 4x2 layout. This visualization helps in comparing different attributes of the `mtcars` dataset effectively.

