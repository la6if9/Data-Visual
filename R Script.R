library(ggplot2)
library(gridExtra)
ggplot(data = txhousing, mapping = aes(x = volume, y = sales))
ggplot(data = na.omit(txhousing), mapping = aes(x = volume, y = sales, col = year)) +
    geom_point() +
    geom_smooth()
ggplot(data = na.omit(txhousing), mapping = aes(x = volume, y = sales)) +
       geom_point() +
       geom_smooth() +
       scale_y_log10() +
       scale_x_log10() +
       facet_wrap(vars(year)) +
       theme_minimal()
ggplot(data = na.omit(txhousing), mapping = aes(x = volume, y = sales)) +
  geom_point() +
  geom_smooth() +
  scale_y_log10() +
  scale_x_log10() +
  facet_wrap(vars(year))
p.something <- ggplot(data = na.omit(txhousing), mapping = aes(x = sales, fill = factor(month))) +
  geom_histogram()

p.something +
  scale_x_log10()+
  facet_wrap(vars(month))
ggplot(data = na.omit(txhousing), mapping = aes(x = sales)) +
  geom_histogram() +
  scale_x_log10() +
  facet_wrap(vars(month))
ggplot(data = na.omit(txhousing), mapping = aes(x = sales)) +
  geom_density() +
  scale_x_log10() +
  facet_wrap(vars(month))
ggplot(data = na.omit(txhousing), mapping = aes(x = factor(month), y = sales)) +
  geom_boxplot() +
  scale_y_log10()
p1 <- ggplot(data = na.omit(txhousing), mapping = aes(x = factor(month), y = sales)) +
  geom_violin() +
  scale_y_log10()

p2 <- ggplot(data = na.omit(txhousing), mapping = aes(x = factor(month), y = sales)) +
  geom_violin() +
  scale_y_sqrt()

grid.arrange(
  
  p1,
  
  p2,
  
  nrow = 1
  
)
