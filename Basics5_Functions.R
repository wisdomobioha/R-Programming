# Creating user function:
# f <- function(<arguments>) { 
#   Do something
#   Do something
#   return(some_output)
# }

wisdom <- function() {
  print("Wisdom Obioha")
}

wisdom()

add <- function(x, y) {
  return(x + y)
}
add(4, 8)

wisdom <- function(age) {
  if(age == 26){
    return("Wisdom is 26 years old")
  } else {
    return("Wisdom is not 26 years old")
  }
}

wisdom(26)
wisdom(27)

# Specifying thresholds in user created functions:
current_age <- function(age, threshold = 35) {
  if(age == 26 & age < threshold) {
    return("Wisdom is 26 years old and a young adult")
  } else if(age > 26 & age > threshold) {
    return("Wisdom is older than 26 years old and an older aolder adults")
  } else if(age < 26) {
    return("Wisdom is less than 26 years old and an early adult")
  } else if(age > 26 & age <= threshold) {
    print("Wisdom is older than 26 and a young adult")
  }
}
current_age(37)

# Using data frame:

movies_data <- read.csv("movies-db.csv")

watchMovie <- function(moviename, my_threshold = 7){
  rating <- movies_data[movies_data[, 1] == moviename, "average_rating"]
  isGoodRating <- function(rating, threshold = my_threshold){
    rating > 7
  }
}

watchMovie("Akira", 8)
isGoodRating()


isGoodRating <- function(rating, threshold = 7) {
  if (rating < threshold) {
    return("NO")
  } else {
    return("YES")
  }
}

checkBook <- function(score) {
  result <- isGoodRating(score)
  print(result)
}

checkBook(8.3)