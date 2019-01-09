gc_median <- 0
gc_ordered <- sort(groups_combined)
if (gc_ordered[group_sizec/2] == gc_ordered[group_sizec/2 + 1]) gc_median <- gc_ordered[group_sizec/2] else gc_median <- (gc_ordered[group_sizec/2]+ g2_ordered[group_sizec/2 + 1])/2
gc_median
