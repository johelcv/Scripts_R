#Lesson 3: Cleaning data
install.packages("tidyverse")
install.packages("skimr")
install.packages("janitor")

library(tidyverse)
library(skimr)
library(janitor)

bookings_df <- read_csv("hotel_bookings.csv")
View(bookings_df)

trimmed_df <- bookings_df %>% 
  select("hotel","is_canceled","lead_time")

View(trimmed_df)

trimmed_df %>% 
  select(hotel, is_canceled, lead_time) %>% 
  rename(type_hotel = hotel)

example_df <- bookings_df %>%
  select(arrival_date_year, arrival_date_month) %>% 
  unite(arrival_month_year, c("arrival_date_month", "arrival_date_year"), sep = " ")

View(example_df)

example_df <- bookings_df %>%
  mutate(guests = adults + children + babies)

View(example_df)

#Great. Now it's time to calculate some summary statistics! 
#Calculate the total number of canceled bookings and 
#the average lead time for booking - you'll want to start your code after the %>% symbol. 
#Make a column called 'number_canceled' to represent the total number of canceled bookings. 
#Then, make a column called 'average_lead_time' to represent the average lead time. 
#Use the `summarize()` function to do this in the code chunk below:

glimpse(bookings_df)

example_df <- bookings_df %>%
  summarize(number_canceled = sum(is_canceled),
            average_lead_time = mean(lead_time))

View(example_df)