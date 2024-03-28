install.packages("here")
library("here")

install.packages("skimr")
library("skimr")

install.packages("janitor")
library("janitor")

install.packages("dplyr")
library("dplyr")

install.packages("palmerpenguins")
library("palmerpenguins")
data()

glimpse(penguins)
head(penguins)

#pipes
penguins %>% 
  select(species) #it only show column species

penguins %>% 
  select(-species) #it shows everything except column species

penguins %>% 
  select(-species) %>% 
  rename(island_new = island) #rename column

rename_with(penguins,tolower)

clean_names(penguins) #function from Janitor Library, to ensures that there's only characters, numbers, and underscores in the names