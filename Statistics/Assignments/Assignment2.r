
#install packeges
install.packages("pacman")

# then load the package 
require(pacman)

# using "pacman::p_load" you can use the p_load
#function from pacman without actually loading pacman 
pacman::p_load(pacman,dplyr,GGally,ggplot2,ggthemes,ggvis,httr,lubridate,plotly,rio,rmarkdown,shiny,stringr,tidyr)


# clear console
cat("\014") #ctrl+L


# Question 1:
# The final score of the World Cup finals of football is France  4 and Croatia 2.
# Please use a control structure to print the results as Team ---- Wins -----.

France <- 4 # Number of goals scored by France
Croatia <- 1 # Number of goals scored by Croatia
if (France > Croatia){
  print ("France wins")
}else{
  print('Croatia wins')
}

# clear console
cat("\014") #ctrl+L

# Question 2: 
# The mtcars data set has several factor variables.
# However, R is reading them as numeric. 
# Please convert them into factors using a for loop.
# Please use column 8 to 11 for the loop.

# data
data(mtcars)
# columns to go to factors
mtcars
str(mtcars)
for (i in 8:11){
  mtcars[i] = lapply(mtcars[i], factor)
}
str(mtcars)

# clear console
cat("\014") #ctrl+L

# Question 3: 
# Write a function to get the percentage of NAs in each column.
sapply(mtcars, function(x) sum(is.na(x)))

# Question 4:
# Write a function to get the percentage of NAs in each row.
nas_row_percent = function(nas_row){
  nas_row = rowSums(is.na(mtcars))
  nas_row = (nas_row/dim(mtcars)[1])*100
  print(nas_row)
}
nas_row_percent()

# clear console
cat("\014") #ctrl+L

# This dataset is a subset of a real dataset.
getwd()
library(readxl)
new_dataset <- read_excel( "C:/Users/Diala/Downloads/Dataset - 2.1.xlsx")
str(new_dataset)
dim(new_dataset)
View(new_dataset)

# clear console
cat("\014") #ctrl+L

# Question 5: 
#Write a function to get a summary of numeric columns (use the summary function) such as THC, CO, CO2, and so on in the data set.
# With the same function, try to generate box plot using base R.
boxplot(new_dataset$THC)
boxplot(new_dataset$CO)
boxplot(new_dataset$CO2)

# Question 6:
# Write a function to create histograms of numeric columns, such as THC, CO, CO2, and so on in the data set. 
#Use ggpot2 to generate figures.
library(ggplot2)
ggplot(new_dataset, aes(x=THC)) + geom_histogram()
ggplot(new_dataset, aes(x=CO)) + geom_histogram()  

# clear console
cat("\014") #ctrl+L

# Question 7: 
# The data set contains date columns. 
# All of these date columns are untidy. Please create a better formatted data set. 
# The date should be dd/mm/yyyy in the final format. 
# Use columns 2, 3, and 5 only.
#C:\Users\Diala\Downloads

getwd()
library(readr)
data = read_csv("C:/Users/Diala/Downloads/Data set - 2.2.csv")
str(data)

library(lubridate)

data$`First FD Date` = mdy(data$`First FD Date`)
format(data$`First FD Date`, "%d/%m/%y") 

data$`Last FD Date` = mdy(data$`Last FD Date`)
format(data$`Last FD Date`,"%d/%m/%y")

data$`FD termination date` = mdy(data$`FD termination date`)
format(data$`FD termination date`, "%d/%m/%y")

# clear console
cat("\014") #ctrl+L

# Question 8: 
# The date of birth column contains months in string format. 
# Please create a tidy data column with months in numeric format. 
# Now your data should be similar to the previous question.
date_of_birth = dmy(data$`Date of Birth`, locale = 'english')
date_of_birth = as.Date(date_of_birth, format= '%d/%m/%y')
date_of_birth = as.Date(format(date_of_birth, '19%y%m%d'), '%Y%m%d')
date_of_birth

# clear console
cat("\014") #ctrl+L

# Question 9: 
# Convert all dates into date format; they are currently in character variable format.
first_FD_date = as.Date(data$`First FD Date`)
last_FD_date = as.Date(data$`Last FD Date`)
FD_termination_date = as.Date(data$`FD termination date`)

# clear console
cat("\014") #ctrl+L

# Question 10: 
# Create a new column age based on the date of birth column and the first FD column. 
# Date format is necessary to do basic arithmetic.

age = (FD_termination_date - date_of_birth)/365
age

# clear console
cat("\014") #ctrl+L