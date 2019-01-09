ggplot(data = NULL, aes(x = CESD_pOrd$CESD_diffs)) + geom_histogram(bins = 100, aes(y = ..density..), fill="navajowhite1", color="grey48", breaks = seq(-50, 50, by = 1)) +
  stat_function(fun = dnorm, color="red", size=1.5, linetype=3, aes(x = seq(1,10,(45/19))), args=list(mean=mean(CESD_pOrd$CESD_diffs), sd=sd(CESD_pOrd$CESD_diffs))) + 
  xlab("CESD Score") + ylab("Density") + ggtitle("Distribution of 190 CESD Sample Values, Differences M1 - M2") + xlim(c(-50, 50)) +
  geom_vline(aes(xintercept = mean(CESD_pOrd$CESD_diffs)), color = "seagreen3", linetype = "dashed", size = 1) + 
  geom_text(aes(label = paste("Mean:", round(mean(CESD_pOrd$CESD_diffs), 2)), x= Inf,y=Inf), hjust=+1.04, vjust=+4, color="seagreen3") +
  geom_text(aes(label = paste("Var:", round(var(CESD_pOrd$CESD_diffs),2)), x= Inf,y=Inf), hjust=+1.05, vjust=+6) +
  geom_text(aes(label = paste("N:", length(CESD_pOrd$CESD_diffs)), x= Inf,y=Inf), hjust=+1.7, vjust=+8)