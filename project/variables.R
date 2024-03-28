#Here's a example of variables
first_var <- "primera variable"
second_var <- 12.5
vec_1 <- c(13, 48.5, 71, 101.5, 2)
vec_1
vec_2 <- c("param1", "param2", "param3")
vec_4 <- c(TRUE, TRUE, FALSE)
list('Chicago' = 1, 'New York' = 2, 'Los Angeles' = 3)
df1 <- data.frame(x = c(1, 2, 3) , y = c(1.5, 5.5, 7.5))
df1
dir.create("destination_folder")
file.create("new_text_file.txt")
file.create("new_word_file.docx")
file.create ("new_csv_file.csv")
file.create("some_file.txt")
file.copy("new_text_file.txt","destination_folder")
unlink("some_file.txt")

data('ToothGrowth')
View(ToothGrowth)
#install.packages("dplyr")
#library(dplyr)
filtered_tg <- filter(ToothGrowth,dose==0.5)
View(filtered_tg)

arrange(filtered_tg,len)

filtered_ToothGrowth = ToothGrowth %>%
  filter(dose==0.5) %>% 
  group_by(supp) %>% 
  arrange(len)

View(filtered_ToothGrowth)
