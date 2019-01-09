hswk_mut %>% 
  ggplot(aes(time, avg_hswk, color=gender, fill=gender)) +
  facet_wrap(~child) +
  stat_summary(fun.data = mean_se, alpha=1, position=position_dodge(.5)) +
  stat_summary(fun.y = mean, geom="line", position=position_dodge(.5)) +
  labs(x="Week", y="Average Housework Performed",
       subtitle = "Mean +/- 1 Standard Error",
                    title="Housework as a function of Gender and Child Presence\nAmong Recent Law School Graduates Studying for the Bar")