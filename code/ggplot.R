library(palmerpenguins)
penguins
library(tidyverse)
glimpse(penguins)

ggplot(data = penguins)   # canvas
ggplot(data = penguins,
       mapping = aes(x= flipper_length_mm))
ggplot(data = penguins,
       mapping = aes(x= flipper_length_mm, y = body_mass_g))

#scatter plot
ggplot(data = penguins,
       mapping = aes(x= flipper_length_mm, y = body_mass_g))+
  geom_point() 

# extra 
penguins |>
  select(species, flipper_length_mm, body_mass_g) |>
  filter(is.na(body_mass_g) | is.na(flipper_length_mm))

ggplot(data = penguins,
       mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species))+
  geom_point()
  
# final
ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g))+
  geom_point(aes(color = species))+
  geom_smooth()+
  labs(title = 'Body mass and Flipper length',
       subtitle = 'with three species',
       x = 'Flipper Length in mm',
       y = 'Body Mass in gm',
       color = 'Species category')


# barplot 

ggplot(penguins, aes(x =species))+
  geom_bar(fill="steelblue")+
  labs(title = 'Count of diff species',
       subtitle = 'with three species',
       x = 'Species',
       y = 'count')

ggplot(penguins, aes(x = fct_infreq(species)))+
  geom_bar(fill="steelblue")+
  labs(title = 'Count of diff species',
       subtitle = 'with three species',
       x = 'Species',
       y = 'count')
  

ggplot(penguins, aes(x = body_mass_g)) +
  geom_histogram(fill='steelblue')+
  labs(title = 'Distribution of Body Mass',
       x = 'Body Mass',
       y = 'count')


ggplot(penguins, aes(x = body_mass_g))+
  geom_density(fill='steelblue')+
  labs(title = 'Distribution of Body Mass',
       x = 'Body Mass',
       y = 'count')
  

# boxplot 
ggplot(penguins, aes(x = species, y = body_mass_g))+
  geom_boxplot(fill='steelblue')+
  labs(title = 'Relationship between Species and Body Mass',
       x = 'Species',
       y = 'Body Mass')
  
# frequency polygon 

ggplot(penguins, aes(x = body_mass_g, color = species))+
  geom_freqpoly(binwidth =200, linewidth = 1)+
  labs(title = 'Relationship between Species and Body Mass',
       x = 'Species',
       y = 'Body Mass')

# Density plot
ggplot(penguins, aes(x = body_mass_g, color = species, fill=species))+
  geom_density(alpha =0.5)


# scatterplot 

ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g))+
  geom_point(aes(color = species))+
  geom_smooth()+
  labs(title = 'Body mass and Flipper length',
       subtitle = 'with three species',
       x = 'Flipper Length in mm',
       y = 'Body Mass in gm',
       color = 'Species category')

# three or more variables 
ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g))+
  geom_point(aes(color = species, shape = island))




