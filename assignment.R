# load packages -----------------------------------------------------------

library(tidyverse)

library(palmerpenguins)
penguins

# graphing penguins data ----

ggplot(data=penguins)

# graph with body mass and flipper length
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = body_mass_g, 
                           y = flipper_length_mm))

# aesthetic mapping ----

# give each species its own color
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = body_mass_g, 
                           y = flipper_length_mm, 
                           color=species))

# give each species its own color, give each island its own shape 
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = body_mass_g, 
                           y = flipper_length_mm, 
                           color=species, 
                           shape=island))

# facets ----

# put each species into its own facet
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = body_mass_g, 
                           y = flipper_length_mm, 
                           color=species, 
                           shape=island)) + 
facet_wrap(~species, nrow=1)

# put each island and species into its own graph
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = body_mass_g, 
                           y = flipper_length_mm, 
                           color=species, 
                           shape=island)) + 
  facet_grid(island~species)

