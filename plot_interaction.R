hswk_f <- hswk_mut %>% 
  filter(FEMALE==1) %>% 
  group_by(gender, ChildHome) %>% 
  summarize(LNHSWK=mean(LNHSWK))

hswk_m <- hswk_mut %>% 
  filter(FEMALE==0) %>% 
  group_by(gender, ChildHome) %>% 
  summarize(LNHSWK=mean(LNHSWK))
                                
hswk_plot <- ggplot(NULL) %>% 
  + geom_line(data=hswk_f, aes(x = ChildHome, y = LNHSWK, color = gender)) %>% 
  + geom_line(data=hswk_m, aes(x = ChildHome, y = LNHSWK, color = gender)) %>% 
  + labs(x="Child in the Home", y = "Average Hours of Housework per Week" )

hswk_plot + scale_x_continuous(breaks = c(0,1), labels = c("no child", "child"))