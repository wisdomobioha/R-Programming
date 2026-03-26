# Using functions to manupulate strings:

# The readLine(): outputs a vector with its elements being all the 
# lines in a file
summary <- readLines("C:/Users/winni/Documents/Wisdom/Courses/R/IBM/Course 1/Basics2_Lists_Matrices.R")
summary



# The nchar(function): outputs the number of characters in each
# elements of a character

x = "Wisdom"
y = c("Wisdom", "Charles")
nchar(x)
nchar(y)
nchar(summary)
check <- data.frame(nchar(summary))

# Case handling characters:
toupper(summary[1]) # this converts the first element in a vector to uppercase
toupper(summary) # this converts all the elements in a vector to uppercase
tolower(summary[1:10]) # this converts elements 1 to 10 in the vector to lowercase
tolower("WISDOM")

# Replacing characters:
chartr(" ", "*", summary[1])
chartr(" ", "*", summary) # these replace spaces in the string to *.
gsub(" ", "AND", summary[1]) # this replaces the old element even if
# the new element is greater in length than the old element

# Splitting a spring:
char_list <- strsplit(summary[1:5], " ")
word_list <- unlist(char_list)
char_list
word_list

# Sorting string:
sort(word_list)
sort(summary[10:20])

# Concatenating strings:
paste(sort(summary[10:20]), collapse = " ")
sorted <- sort(summary[10:20])
paste(sorted, collapse = " ")

# isolating strings:
substr(summary, start = 1, stop = 10)
name = "wisdom"
substr(name, start = 4, stop = 6)
names <- c("Wisdom", "Charles", "Emmanuel")
substr(names, start = 4, stop = 6)

# Remove white spaces:
names <- c("    Wisdom    ", "Charles   ", "Emmanuel   ")
trimws(names) # removes all white spaces before and after the string character

library(stringr)
names <- trimws(c("    Wisdom    ", "Charles   ", "Emmanuel   "))
str_sub(names, start = 3, end = 6) # counting forward
str_sub(names, start = -3, end = -1) # counting backwards
