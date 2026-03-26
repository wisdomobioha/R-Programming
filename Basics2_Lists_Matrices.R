# Lists
movie <- list("Toy Story", 1995, c("Animation", "Adventure", "Comedy"))
movie
# Retrieving specific elements of lists:
movie[2]
movie[2:3]

# Naming list elements:
movie <- list(name = "Toy Story",
              year = 1995,
              genre = c("Animation", "Adventure", "Comedy"))
movie

# To access specific element of a list, use the $ operator after the list name:
movie$year
movie$genre # or use []
movie["name"]
movie["year"]
movie["genre"]
#Use double [[]] to get elements of vectors inside a list:
movie[["genre"]]

# To add a new element to a list:
movie["age"] <- 5
movie # or
movie[["age"]] <- 6
movie

# To remove an element from a list:
movie[["age"]] <- NULL
movie

# Array and Matrices
#To create an array, first create a vector:
ages <- c(65:81) # then use the array() function to convert the vector into an array:
ages_array <- array(ages, dim = c(4, 4)) # four rows and four columns
ages_array

# you can also write the code without the the dim = option
ages_array <- array(ages, c(4, 4)) 
ages_array

# To access elements in an array:
ages_array[2, 2] # accesses age 70 from the 2nd row and 2nd column
ages_array[3,] #accesses all elements in row 3
ages_array[, 4] # access all elements in row 4
# by default, arrays are arranged by row rather than columns
# To get the dimension of an array, use the dim() function:
dim(ages_array)

# Matrices:
# To create a matrix, also create a vector first:
name = c("Fight Club", "Star Wars", "Interstellar", "Jumani")
name_matrix <- matrix(name, nrow = 2, ncol = 2)
name_matrix
# by default, matrix is arranged by columns rather than rows
# to change this, use the byrow = TRUE option
name = c("Fight Club", "Star Wars", "Interstellar", "Jumani", 
         "Fight Club", "Star Wars", "Interstellar", "Jumani")
name_matrix <- matrix(name, nrow = 3, ncol = 3, byrow = TRUE)
name_matrix

# Access subsets of the matrix:
name_matrix[1,1] # row 1 column 1
name_matrix[2:3, 1:2] # accesses matrix elements in rows 2 and 3, and columns 1 and 2
# first, it gets the range of elements from row 2 to 3, and range of elements from column 1 to 2

