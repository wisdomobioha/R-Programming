# To create a dataframe, combine one or more vectors using the data.frame() function:
movies <- data.frame(name = c("Toy Story", "Akira", "The Breakfast Club", "The Artist", "Modern Times", "Fight Club", "City of God", "The Untouchables"),
                     year = c(1995, 1998, 1985, 2011, 1936, 1999, 2002, 1987))
movies

# To access variables in a data frame, use the $ operator:
movies$name
movies$year

# You can also specify the column number you want to access inside a []:
movies[2] # year
movies[1] # name
movies[1, 2] # row 1 column 2
movies[1:2, 1:2] # first and 2nd rows, and column 1 and 2.

# To get information about the data structure of a data frame, use the following functions:
str(movies)
head(movies) # first 6 rows
tail(movies) # last 6 row
colnames(movies)

# To create a new variable or insert a new column in the data frame
movies["length"] <- c(81, 125, 97, 100, 87, 139, 130, 119)
movies
# Alternatively:
movies$length_2 <- c(81, 125, 97, 100, 87, 139, 130, 119)
movies

# To insert a new row, use the rbind()  function:
movies <- rbind(movies, c(name = "Dr. Strangelove",
                          year = 1964,
                          length = 94,
                          length_2 = 94))
movies

# To remove a row, use the - symbol in from of the row number:
movies <- movies[-9,]
movies
# To remove a variable, use the - symbol in front of the column number:
movies <- movies[, -4]
movies
# Alternatively, a column can be removed by assigning null to the column as:
movies["length"] <- NULL
movies #or
movies$year <- NULL
movies