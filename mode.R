?ccorgc_mode <- 0
gc_counts <- seq(length = length(gc_ordered), from = 1, by = 0)
cnt <- 1
for (i in 1:(length(gc_ordered)-1)) {
  for (j in (i+1):length(gc_ordered)) {
    if (gc_ordered[i] == gc_ordered[j]) gc_counts[i] <- gc_counts[i] + 1
    if (gc_counts[i] > cnt) {
      cnt <- gc_counts[i]
    }
  }
}
gc_max <- max(gc_counts)
gc_max
gc_mode <- c(NULL)
for (i in 1:group_sizec) {
  if (gc_counts[i] == gc_max) {
    gc_mode <- c(gc_mode, gc_ordered[i])
    print(gc_ordered[i])
    print(gc_counts[i])
  }
}
gc_mode