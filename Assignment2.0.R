# Assignment 2.0
#' Kimberly Corneil
#' June 19, 2024
#' Coding in R
#' This is the right assignment I had some struggles starting a file but this is the one to be marked! sorry

#' MY MASTER PLAN
#' Prompt the user to give a three digit number using the readline() function
#' Using the conditional statement function if and else check if the input is numeric
#' If not ask the user to input a numeric number
#' If the input is numeric, check if it is a narcissistic number and display the appropriate message

# Create the readline() prompt
question <- readline(prompt = "Please enter a three digit positive number: ")

# I forgot in my plan to add this step but I need it to attempt to convert the input from character to numeric
question <- as.numeric(question)

# I also forgot to add this into my plan - SAY WHERE
# split the input using unlist and strsplit - EXPLAIN WHAT THEY DO BRIEF
# do this to break the number into indiividual numbers - EXPLAIN BETTER
broken <- unlist(strsplit(as.character(question), " "))

# I also forgot to add this into my plan - SAY WHERE
# create n which is the length of broken so it can be used as a power to check for Armstrong numbers 
n <- length(broken)

# Check if the input is numeric using the if else function
if (class(question) != numeric){
# Check if question is numeric - GETTING ERROR HERE, FIX
  print(paste(question, "is not numeric, please try again."))
  break
} else if (n != 3){
# Check if question is three digits, if not break
  print(paste(question, "is a number but it is not three digits. Please try again."))
  break
} else if (broken^n != question) {
# If question is not equal to broken^n, then question is not an Armstrong number
  print(paste(question, "is not an Armstrong number"))
} else if (broken^n == question){
# If question is equal to broken^n, then question is an Armstrong number
  print(paste(question, "is an Armstrong number!"))
}


