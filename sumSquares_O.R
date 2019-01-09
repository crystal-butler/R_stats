states_OT2_SSb_T <- sum(
  (dim(filter(states_OT2, sname=="NY"))[1]) * (mean((filter(states_OT2, sname=="NY"))$dertea) - mean(states_OT2$dertea)) ^ 2,
  (dim(filter(states_OT2, sname=="CA"))[1]) * (mean((filter(states_OT2, sname=="CA"))$dertea) - mean(states_OT2$dertea)) ^ 2,
  (dim(filter(states_OT2, sname=="FL"))[1]) * (mean((filter(states_OT2, sname=="FL"))$dertea) - mean(states_OT2$dertea)) ^ 2,
  (dim(filter(states_OT2, sname=="IM"))[1]) * (mean((filter(states_OT2, sname=="IM"))$dertea) - mean(states_OT2$dertea)) ^ 2
)