gc_ss <- 0
for (score in groups_combined) {
  gc_ss <- gc_ss + (score - gc_mean) ^ 2
}
gc_ss
gc_svar <- gc_ss/(length(groups_combined)-1)
gc_svar