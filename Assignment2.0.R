# Assignment 2.0
#' Kimberly Corneil
#' June 19, 2024
#' Coding in R

#' MY MASTER PLAN
#' Prompt the user to give a three digit number using the readline() function
#' Using the conditional statement function if and else check if the input is numeric
#' If not ask the user to input a numeric number
#' If the input is numeric, check if it is a narcissistic number and display the appropriate message

# Ask the user for specific input  
question <- readline(prompt = "Please enter a three digit positive number: ")

# I forgot to add this into my plan - it should be after line 7
# split the input strsplit (splits elements of a character vector, which is the output from line 13) 
# use unlist to break the components of "broken" into each atomic component that can be converted to a numeric later (if question input was numeric)
# purpose of this step is to break the numeric input into individual numbers so they can later be used to check if the original input was an Armstrong number
broken <- unlist(strsplit(question, ""))

# I forgot to add this into my plan - it should be after what I added in line 15
# Attempt to convert the input from character to numeric to use for checking if "broken" is an Armstrong number 
broken <- as.numeric(broken)

# I also forgot to add this into my plan - it should be after what I added in line 21
# create "n" which is the length of "broken" so it can be used as a power to check for Armstrong numbers and to check for the length of the input 
n <- length(broken)

# I also forgot to add this into my plan - it should be after what I added in line 25
# this step is after the creating of "broken" because strsplit() works on character vectors, so by attempting to convert question to a numeric after the creation of broken I do not have to convert it to a character in line 19
# attempt to convert "question" to a numeric to check if the user inputted a numeric value
# If it works is.na in line 42 will return false and will move to the next else statement 
# if the input was not numeric is.na will return true and the user will be given an error statement prompting them to try again and input a numeric value
question <- as.numeric(question)

# Check user input 
# first check if it is numeric
# if the input is numeric check if the numeric input is three digits, otherwise exit the code and output an error prompt to try again with a numeric input. 
# if the numeric input is three digits check if it is an Armstrong number, otherwise exit the code and output an error prompt to try again with a three digit numeric input.
# check if the three digit numeric input is not an Armstrong number print a message that the input is not an Armstrong number
# if the three digit numeric input is an Armstrong number print a message that the input is an Armstrong number
if (is.na(question)){
# Checking if "question" is numeric
  stop("Entry is not numeric. Please try again")
} else if (n != 3){
# Checking if "question" is three digits 
  stop("Entry is numeric but is not three digits. Please try again")
} else if (sum(broken^n) != question){
# Checking if "question" is not an Armstrong number. 
  print(paste(question, "is not an Armstrong number"))
} else if (sum(broken^n) == question){
# Checking if "question" is an Armstrong number. 
  print(paste(question, "is an Armstrong number!"))
}


