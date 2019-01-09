cor.CI.bootstrap <- function(df, var1, var2, nSims=1000, seed=NA) {
  
  if (!is.na(seed)) {set.seed(seed)}
  cat("\n Bootstrapped 95% CI for",var1,"&",var2,"with",nSims,"simulations:")
  cat("\n")
  cat("\n")
  
  df %>% 
    bootstrap(nSims) %>% 
    do(tidy(cor(.[var1], .[var2]))) %>% 
    ungroup() %>% select_(pearson_r = var2) %>% 
    arrange(pearson_r) %>% 
    slice( c(nSims*.025, nSims*.975)) %>% 
    mutate_all(funs(round(.,4))) %>% 
    add_column(bound = c("lower", "upper")) %>% print()
  
}

cor.CI.bootstrap(simData2, "XN", "YN", seed = 11092016)
cor.CI.bootstrap(simData2, "XND", "YND", seed = 11092016)