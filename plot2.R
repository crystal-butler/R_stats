s_plot <- ggplot(newStudents, aes(bRSE, K10)) +
   theme_light() +
   geom_point() +
   geom_jitter(width = 0.1) +
   geom_abline(intercept = s_inter, slope = s_slope, color = "aquamarine2") +
  xlab("Rosenberg Self Esteem Measure") + 
  ylab("K10 Self-report of Distress") + 
  ggtitle("Distress as a Function of Self Esteem")
s_plot