# To check the type of data, use the functions below:
is.integer(1L)
is.numeric(1)
is.character("Wisdom")
is.double(1.1)
is.logical(FALSE)

# To convert a data to another data type, use the functions:
as.numeric(3L)
as.integer(3.1)
as.character(3)
as.numeric("3")
as.logical(3)
as.logical("FALSE")
as.numeric(FALSE)

# To see objects in R memory in the current workspace, use the function:
ls()

# To save the current workspace:
save.image("my workspace.RData")

# Formulating table:
movies <- data.frame(name = c("Fight Club", "Star Wars", "Interstellar", "Jumani"),
                    year = c(1999, 1997, 2014, 1995),
                    length_min = c(139, 121, 169, 104),
                    genre = c("Drama", "Action", "Adventure", "Fantasy"),
                    average_rating = c(8.9, 8.7, 8.6, 6.9),
                    cost_millions = c(63, 11, 165, 65),
                    foreign = c(0, 0, 0, 0),
                    ageP_restriction = c(18, 10, 10, 12))

# Vector: a one dimensional array of objects:
vector1 <- c(81, 125) # numeric vector
        # When you perform arithmetic operations with a vector,
        # the resulting output is distribution across each elements of the vector:
        # example:
        vector2 <- vector1/60 # this is equivalent to creating a new column by dividing the
        # values of vector1 by 60
# Vectors in sequence:
        vector3 <- c(1:10) # ascending sequence
        vector4 <- c(10:1) #descending sequence
vector5 <- c("Wisdom", "Obioha") # character vector
vector6 <- c(movies$average_rating > 7.5)

# Concatenating Vectors:
# You can add additional elements to a vector as follows:
vector4 <- c(vector4, vector3)

# Factors: variables that can take on a limited number of variables. They are also called categorical variables:
vector5_factor <- factor(vector5)
summary(vector5_factor) # used to summarize factors:

# To indicate ordinal variables with some sort of rank between its catogories:
self_rated_health <- c("Poor", "Fair", "Good", "Exellent")
self_rated_health_factor <- factor(self_rated_health, ordered = TRUE, levels = c(self_rated_health))
self_rated_health_factor
summary(self_rated_health_factor)

# Operations with Vectors:

# The names() functions names the elements of a function:
year <- c(1999, 1997, 2014, 1995)
names(year) <- c("Emmanuel", "Wisdom", "Miracle", "Precious")
# The length() shows the number of elements in a vector:
length(year)
# The sort() function sorts the elements of a vector:
sort(year)
sort(year, decreasing = TRUE) # sorts in ascending order
# the min() and max() functions shows the minimum and maximum elements of a vector:
min(year)
max(year)
# The sum() computes the total value of vector elements:
sum(movies$average_rating)
# The mean() computes the average value of vector elements:
mean(movies$average_rating)
# The summary() function displays descriptive statistics about the vector:
summary(movies$average_rating)

# Retrieving specific elements of a vector, use the [square] brackets:
year["Emmanuel"]
year[3] # for the third element
year[2:4] # from the second to forth elements in ascending order
year[4:2] # from the forth to second elements in descending order
year[c(2,3)] # for the second and third elements, specifically
year[-2] # the negative sign removes the vector element in the second position
year[5] # R returns NA (missing) because the vector does not contain up to 5 elements

# Logical Operations with vectors:
year > 1999 # show true for each vector elements greater than 1999 and
            # false for vector elements less than 1999.
year[year>1999] # this shows only vector elements greater than 1999
year[year<1999] # this shows only vector elements less than 1999
year[year==1999] # this shows only vector elements equal to 1999

# Handling missing values: use the is.NA() function to know whether there is missign values in a vector