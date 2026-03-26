mail_list <- data.frame(name = c("John Doe", "Jane Doe", "Mark Mann",
                                 "Barry Goode", "Joe Star", "Susan Quinn",
                                 "Alice Erin", "Frank Irving"),
                        email = c("doe@example.com", "jadoe@sample.ca",
                                  "mmann@example.ca", "bgoode@example.com",
                                  "joes@sample.com", "qsus@example.br",
                                  "erina@example.com", "irving@sample.com")
                        )
# Regular expressions are used to match patterns in strings and texts.
# A regular expression is expressed: .+@.+
# In emails, it is expressed as .+@.+\\.
# Where:
        # . = match with any character
        # + = match with preceding characters 1 or more times
        # if there as * in place of +, it matches 0 or more characters
        # @ = match with the @ symbol in the string
        # the first two are repeated after the @ sign.
            # in emails:
                  # \\. = match the . symbol rather than using it as a
                  #       match tool as done previously
# Examples:
grep("@.*", c("test@testing.com", "not an email", "test2@testing.com")) # this shows
# the positions of elements of the vector that match the @.* regular expression
grep("@.*", c("test@testing.com", "not an email", "test2@testing.com"), value = TRUE) #this
# outputs the actual elements of the vector that match the regular expression

gsub("@.*", "@newdomain.com", c("test@testing.com", "not an email", "test2@testing.com"))
# the above function replaces elements of a string that match the regular expression @.*
# to the 2nd argument @newdomain.com
matches <- regexpr("@.*", c("test@testing.com", "not an email", "test2@testing.com"))
regmatches(c("test@testing.com", "not an email", "test2@testing.com"), matches)

# using regular expressions on data frames:
grep("@.*\\.", mail_list$email)
grep("@.*\\.", mail_list[["email"]])
grep("@.*\\.", mail_list[, "email"])
# then to get the actual values rather than the positions:
grep("@.*\\.", mail_list$email, value = TRUE)

# replacing the matched elements
gsub("@.*\\.", "@mydomain.com", mail_list$email)

regexpr("@.*\\.", mail_list$email)
regmatches(mail_list$email, regexpr("@.*\\.", mail_list$email)) # or
matched_email <-regexpr("@.*\\.", mail_list$email)
regmatches(mail_list$email, matched_email)

match_email <- regexpr("@.*\\.", mail_list[, "email"])
mail_list[, "domain"] <- regmatches(mail_list[, "email"], match_email) # this create
# a new column with the matches as its values

# you can tweak this a bit as follows:
matched_email2 <- regexpr("@.*\\.com", mail_list$email)

# just a refresher on accessing elements of vectors (columns or variables) within a data frame
mail_list$email
mail_list[["email"]]
mail_list[, "email"]
