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
# Needed to ask the user for specific input  
question <- readline(prompt = "Please enter a three digit positive number: ")

# I forgot to add this into my plan - it should be after line 8
# split the input strsplit (splits elements of a character vector)
# use unlist to break the components of broken into each atomic component. 
# without unlist broken cannot be converted into a numberic in line WHATTTTTTTT
# the readline() function returns a character vector which is what strsplit works on
# do this to break the number into individual numbers so they can later be used to check if the original input was an Armstrong number
broken <- unlist(strsplit(question, ""))

# I forgot to add this into my plan - it should be after what I added in line 17
# Attempt to convert the input  from character to numeric 
# If it works is.na in line WHAT will return false
# if the input was not numeric is.na will return true and the user will be prompted to give another number
broken <- as.numeric(broken)

# I also forgot to add this into my plan - it should be after what I added in line 25
# create n which is the length of broken so it can be used as a power to check for Armstrong numbers 
n <- length(broken)

# Check user input ## FIX THIS STILL GETTING ISSUES WITH NON NUMERIC SINCE IT DOESNT GET TO MY STOP
if (is.na(question)){
# Check if question is numeric, if not exit with stop () with an error message
  stop("Entry is not numeric. Please try again")
} else if (n != 3){
# Check if question is three digits, if not exit with stop () with an error message
  stop("Entry is numberic but is not three digits. Please try again")
} else if (sum(broken^n) != question){
# If question is not equal to broken^n, then question is not an Armstrong number
  print(paste(question, "is not an Armstrong number"))
} else if (sum(broken^n) == question){
# If question is equal to broken^n, then question is an Armstrong number
  print(paste(question, "is an Armstrong number!"))
}


