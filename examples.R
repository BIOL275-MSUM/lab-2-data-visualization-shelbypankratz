# load packages
library(tidyverse)

# print mpg
mpg
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color="blue")
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color=class))
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, size = class))
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class), shape=15)
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ class, nrow=3)
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_grid(.~ cyl)

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = body_mass_g, y = flipper_length_mm, color=species, shape=island)) + 
  facet_wrap(~species, nrow=1)
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = body_mass_g, y = flipper_length_mm, color=species, shape=island)) + 
  facet_grid(island~species)
