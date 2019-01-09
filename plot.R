s_plot <- ggplot(students, aes(bRSE, K10)) +
  theme_light() +
  geom_point() +
  geom_jitter(width = 0.1) +
  geom_smooth(colour = "aquamarine3")
s_plot
