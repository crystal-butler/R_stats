pairwise.t.test.noAdj <- function(df, aov) { #df = states_O_S; aov = states_O_S_aov
  
  vars <- aov$model %>% names()
  var1 <- df %>% select_(vars[1]) %>% unlist() %>% as.vector()
  var2 <- df %>% select_(vars[2]) %>% unlist() %>% as.vector()
  
  df.within <- tidy(aov)$df[2]
  t.std.error <- sqrt( 2*tidy(aov)$meansq[2] / ((df.within + tidy(aov)$df[1] + 1)/length(aov$coefficients)))
  
  TukeyHSD(aov, ordered=FALSE) %>% 
    tidy() %>% 
    select(comparison, meanDifference = estimate, conf.low, conf.high) %>% 
    left_join(
      pairwise.t.test(var1,
                      var2, p.adj = "none") %>% 
        tidy() %>% 
        unite(comparison, group1, group2, sep="-")
    ) %>% 
    mutate(std.error = t.std.error,
           df = df.within,
           t.value = meanDifference/std.error) %>% 
    select(comparison, meanDifference, std.error, t.value, df, p.value, conf.low, conf.high) %>% 
    arrange(comparison)
}