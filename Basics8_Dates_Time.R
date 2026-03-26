# Dates: 2026-03-26, ymd
# time: 11:30:25 UTC, hms
# Date-Time: 2026-03-26 11:30:25 UTC, ymd_hms

# Example Dates in Tidyverse:
library(tidyverse)

# String Date
ymd("2026/03/04") # full date
year("2026-03-04") # only the year
mdy("04-16-2026") # full date
mdy("January 20th, 2023") # full date
month("16-03-2026") # month only
dmy("30-03-2026") # full date
day("30-03-2026") # only day
dmy("16 January 2026") # full date
Sys.Date() # current date

# Numeric Dates
ymd(20200418)
mdy(04182020)
dmy(18042020)

# Example Time in Tidyverse:
hms("11:30:25")
hms("11:30:25 UTC")
Sys.time() # date_time

# Example Date-Time:
mdy_hms("03/26/2026 11:30:25")
mdy_hm("03/26/2026 11:30")
mdy_h("03/26/2026 11")
ymd_hms("2026/03/26 11:30:25")
now() # current date-time
date() # current date-time

# Converting date-time to time or date:
as_date(now()) # tidyverse
as.Date(now()) # Base R
as_date(mdy_hms("03/26/2026 11:30:25")) # tidyverse

# UNIX time operations:
oscar_actors <- data.frame(actor_name = c("Learnado DiCaprio", "Eddie Redmayne",
                                          "Matthew McConaughey", "Daniel Day-Lewis",
                                          "Jean Dujardin", "Colin Firth",
                                          "Jeff Bridges", "Sean Penn",
                                          "Forest Whitaker", "Philip Seymour"),
                           date_of_birth = c(153360000, 379123200, -5011200,
                                             -400032000, 77760000, -293760000,
                                             -633571200,-295833600, -267148800,
                                             -77155200)
                           )
# date_of_birth column above is represented in UNIX-time format, which counts the
# number of seconds from January 1, 1970.
oscar_actors[, "actors_birthday"] <- as.POSIXct(oscar_actors[["date_of_birth"]], 
                                                origin = "1970-01-01")
# the output is a date-time because it includes all seconds since 1970-01-01
# Since date-time may not be appropriate for analysis, you can convert to date:
oscar_actors[["birthdate"]] <- as.Date(oscar_actors[["actors_birthday"]])

# date extraction:
oscar_actresses <- data.frame(actress_name = c("Brie Larson", "Julianne Moore",
                                               "Cate Blanchett", "Jennifer Lawrence",
                                               "Meryl Streep", "Natalie Portman",
                                               "Sandra Bullock", "Kate Winslet",
                                               "Marion Cotillard", "Helen Mirren"),
                              date_of_birth = as.factor(c("1989/10/01", "1960/12/03",
                                                          "1969/05/14", "1990/08/15",
                                                          "1949/06/22", "1981/06/09",
                                                          "1964/07/26", "1975/10/05",
                                                          "1975/09/30", "1945/07/26"))
                              )
# notice that the date_of_birth column is a factor:
class(oscar_actresses[["date_of_birth"]])
summary(oscar_actresses[, "date_of_birth"])
# Since the as.POSTXct function works mainly with numeric UNIX time, we have to use
# the as.Date function, which works with both characters and factors

oscar_actresses[["actresses_birthday"]] <- as.Date(oscar_actresses[["date_of_birth"]],
                                                   "%Y/%m/%d")
# to get the name of the week:
oscar_actresses[["birth_week"]] <- weekdays(as.Date(oscar_actresses[["date_of_birth"]],
                                                    "%Y/%m/%d")) # full weekday name
oscar_actresses[["abv_birth_week"]] <- weekdays(as.Date(oscar_actresses[["date_of_birth"]],
                                                    "%Y/%m/%d"), abbreviate = TRUE) # abbreviated weekday name
# to get the name of the month:
oscar_actresses[["birth_month"]] <- months(as.Date(oscar_actresses[["date_of_birth"]],
                                                    "%Y/%m/%d")) # full month name
oscar_actresses[["birth_month"]] <- months(as.Date(oscar_actresses[["date_of_birth"]],
                                                   "%Y/%m/%d"), abbreviate = TRUE) # abbreviates month name
oscar_actresses[["birth_month"]] <- quarters(as.Date(oscar_actresses[["date_of_birth"]],
                                                   "%Y/%m/%d")) # quarter of the year

# "%Y/%m/%d" is a date specifier. Other specifiers include:
# "%a" = Three character abbreviated weekday name, e.g., MON
# "%A" = Full weekday name, e.g., Monday.
# "%b" = Three character abbreviated month name, e.g., APR
# "%B" = Full month name, e.g., April
# "%d" = Day of the month, e.g., 16
# "%m" = month of the year
# "%y" = "Two digit year representation
# "%Y" = "Four digit year representation"

# date operations:
as.Date("2026/04/23") - as.Date("1999-04-23") # time difference
as.Date("2026/04/23") > as.Date("1999/04/23")

# sequence of dates:
seq(as.Date("2026/04/23"), by = "month", length.out = 4)