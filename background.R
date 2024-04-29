library(tidyverse)

expand_grid(x = 1:12000, y = 1:6) |> 
  ggplot(aes(x, y)) +
  geom_tile(aes(fill = x)) +
  theme_void() +
  guides(fill = "none") +
  scale_fill_distiller(palette = "Pastel1")

ggsave("images/background.png", width = 6000, height = 3, units = "px", dpi = 210, limitsize = FALSE)
