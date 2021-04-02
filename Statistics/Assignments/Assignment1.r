#Question 1
#What is the basic difference and similarity between a vector and a matrix?
#similarity
#Both of them can store only one type of data.
#Difference
#Arrays have only one dimension, a row of elements while a matrix has more dimensions.

#Question 2
#What is the basic difference and similarity between a data frame and a matrix?
#similarity
#both of them have rows and columns with no direction.
#difference
# 1-
#A matrix is a Collection of data sets arranged in a two dimensional rectangular organization.
#Data frame Stores data tables that contains multiple data types in multiple column called fields.
# 2- 
# Also a matrix is Its m*n array with similar data type.	
# Data frame is a list of vector of equal length. It is a generalized form of matrix.

#Question 3
#Create a vector using (15, TRUE, "World"). What happened to your result?

vec<- c( 15 , TRUE , "WORLD" )
#All the elements will considered as a character.

#Question 4

#John's scores in the final semester for the three subjects are 95, 91, and 88. 

#subjects vector
subjects<- c("Statistics", "Linear Algebra", "Calculus")

#grades vector 
grades <- c(95, 91, 88)

#"names" function to give a name to each grade
names(grades) <- subjects

#Question 5
#Please check the types (character or numeric) of the vector you created.
class(vec) #character
class(grades) #numeric
class(names) #function

#Question 6
#You have three students in your class (choose any name you want). You must create a matrix using their score in the above mentioned subjects (question 4) Student 1 (95, 91, and 88), Student 2(96, 94, and 97), Student 3(88, 98, and 85). Create a matrix and label column and row names.

grades_matrix <- matrix(c(95, 91, 88 ,96, 94, 97 ,88, 98,  85 ) , nrow = 3 ,ncol = 3 ,  byrow = TRUE)
rownames(grades_matrix) <- c("Student 1" , "Student 2" , "Student 3")
colnames(grades_matrix) <- names(grades)
View(grades_matrix)

#Question 7
#Convert the created matrix into a data frame.

grades_dataframe <- data.frame(grades_matrix)
view(grades_dataframe)

#Question 8
#Create three vectors using five countries (your choice) from the following website. The first vector should be country names, the second vector should be the total number of cases, and the third vector should contain the total number of deaths. Create a data frame using these vectors. 

countries<-c("USA","BRAZIL" ,"INDIA" ,"RUSSIA" , "UK"  )
tot_cases <- c(30576962	 , 12051619 ,11686796, 4474610, 4301925)
tot_deaths <- c(555945, 295685 , 160200 , 95818 , 126172 )

covid <- data.frame(countries , tot_cases , tot_deaths)
print(covid)


#Question 9
#Please read the mtcars data set from R. It is an built-in data set .Please check the structure of the data set. If required, please convert the data into their appropriate data types (character, logical, factor, etc) , Save your results as a new data frame using a new name. 

data(mtcars)
str(mtcars)
mtcars$vs <- as.logical(mtcars$vs)
mtcars$am <- as.logical(mtcars$am)
mtcars$cyl <- as.factor(mtcars$cyl)
mtcars$gear <- as.factor(mtcars$gear)
mtcars$carb <- as.factor(mtcars$carb)
mtcars_newDF <- data.frame(mtcars)
