# load packages

library(tidyverse)

library(palmerpenguins)
penguins

# graphing penguins data

ggplot(data=penguins)

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = body_mass_g, y = flipper_length_mm))
