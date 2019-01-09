ggplot(data = NULL, aes(x = gc3)) + geom_histogram(aes(y = ..density..), fill="navajowhite1", color="grey48", breaks=brx(gc3)) + 
  stat_function(fun = dnorm, color="red", size=1.2, linetype=3, aes(x = seq(1,10,(45/19))), args=list(mean=mean(gc3), sd=sd(gc3))) + 
  xlab("gc3 Scores") + ylab("Density") + ggtitle("Distribution of 20 Transformed Scores ((-24.25)/12.5)") + 
  geom_vline(aes(xintercept = mean(gc3)), color = "seagreen3", linetype = "dashed", size = 1) + 
  geom_vline(aes(xintercept = median(gc3)), color = "orchid3", linetype = "dashed", size = 1) + 
  geom_text(aes(label = paste("Mean:", mean(gc3)), x= Inf,y=Inf), hjust=+1.7, vjust=+4, color="seagreen3") +
  geom_text(aes(label = paste("Median:", median(gc3)), x= Inf,y=Inf), hjust=+1.75, vjust=+6, color="orchid3") +
  geom_text(aes(label = paste("SD:", round(sd(gc3),2)), x= Inf,y=Inf), hjust=+2.05, vjust=+8) +
  geom_text(aes(label = paste("N:", length(gc3)), x= Inf,y=Inf), hjust=+2.7, vjust=+10)