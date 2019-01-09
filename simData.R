simData2 <- tibble(obsv_ID = 1:30, 
                  XD = ifelse(obsv_ID <= 15, 0, 1), 
                  YD = 4 - XD + rnorm(30, 0, 1),
                  XN = rnorm(30, .5, .5),
                  YN = 4 - XN + rnorm(30, 0, 1),
                  XND = ifelse(XN < .5, 0, 1),
                  YND = ifelse(YN < 3.5, 0, 1))