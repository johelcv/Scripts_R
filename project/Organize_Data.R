#Organize data
library(tidyverse)
head(penguins)

penguins %>% 
  arrange(bill_length_mm) #de menor a mayor

penguins %>% 
  arrange(-bill_length_mm) #de mayor a menor

penguins2 <- penguins %>%

  arrange(-bill_length_mm) #de mayor a menor

View(penguins2)

penguins %>%
  group_by(island) %>% 
  drop_na() %>% 
  summarize(mean_bill_length_mm = mean(bill_length_mm))

penguins %>%
  group_by(island) %>% 
  drop_na() %>% 
  summarize(media_aritmetica = mean(bill_length_mm))

penguins %>%
  group_by(island) %>% 
  drop_na() %>% 
  summarize(max(bill_length_mm))

penguins %>%
  group_by(species, island) %>% 
  drop_na() %>% 
  summarize(max(bill_length_mm),mean(bill_length_mm))

penguins %>%
  filter(species == "Gentoo") %>% #Filtrar
  filter(body_mass_g > 5000)