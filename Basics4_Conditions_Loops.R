movies <- data.frame(name = c("Toy Story", "Akira", "The Breakfast Club", 
                              "The Artist", "Modern Times", "Fight Club", 
                              "City of God", "The Untouchables",
                              "Star Wars Episode IV", "American Beauty",
                              "Room", "Dr. Strangelove", "The Ring",
                              "Monty Python and the Holy Grail",
                              "High School Musical", "Shaun of the Dead"),
                     year = c(1995, 1998, 1985, 2011, 1936, 1999, 2002,
                              1987, 1977, 1999, 2015, 1964, 1998, 1975,
                              2006, 2004)
                     )

# the *if* conditional statement:
movie_year <- 2002
if(movie_year > 2000) {
  print("Movie year is greater than 2000")
}

# the *if and else* conditional statements:
if(movie_year > 2000) {
  print("Movie year is greater than 2000")
} else {
  print("Movie year is less than 2000")
}

# It is important to know that the if / else / else if functions returns a 
# single T/F value
# So, they cannot be used on vectors, where they will be several T/F values
# Therefore, when working with vectors (e.g., a column/variable in a data frame),
# it is best to use the ifelse(). It returns a vector from a vector.
# Example:
movies$year > 1999
movies[, "year"] > 1999 # The two codes above return T/F for each value of year
# Now, to assign "New" to values that meet these condition (i.e., T), and
# Old to those that don't meet this condition (i.e., F):
ifelse(movies$year > 1999, "New", "Old") # Similarly:
ifelse(movies[, "year"] < 1999, "Old", "New")

# You can get a subset of data using the subset() function:
wisdom <- 26
if(wisdom == 26) {
  subset(movies, year >= 2000)
} else{
  subset(movies, year < 2000)
}

# Loops
years <- c(1995, 1998, 1985, 2011, 1936, 1999)
for (yr in years) {
  print(yr)
}

# Loop and if conditional statements:
for (yrs in years) {
  if(yrs < 1980) {
    print("Old movie") 
    } else{
        print("Not old movie")
      }
}

# While Loops:
count <- 1 # start by creating a start point
while (count <= 5) {
  print(c("Iteration number:", count))
  count <- count + 1
}

iteration <- 1
while (iteration <= 5) {
  print(c("This is iteration number:", as.character(iteration)))
  print(movies[iteration,]$name)
  iteration = iteration + 1
}

iteration <- 6
while (iteration > 5 && iteration < 9) {
  print(c("This is the row number:", as.character(iteration)))
  print(movies[iteration,]$name)
  iteration = iteration +1
}
