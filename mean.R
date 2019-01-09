gc_mean <- 0
gc_sum <- 0
for (score in groups_combined)
  gc_sum <- gc_sum + score
group_sizec = length(groups_combined)
gc_mean <- gc_sum/group_sizec
gc_mean
