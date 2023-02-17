library(tidyverse)

# Read in data
rw <- read_csv("data_raw/3. post water off- rings H-K-2.csv")

# non-transformed timeseries
ggplot(rw, aes(x = Year, y = `Width (mm)`)) +
  geom_point(aes(col = SEX)) +
  geom_line(aes(col = SEX, group = ID))

# non-transformed histograms
ggplot(rw, aes(x = `Width (mm)`)) +
  geom_histogram(aes(fill = SEX)) +
  facet_wrap(~SEX)

# log-transformed timeseries
ggplot(rw, aes(x = Year, y = log(`Width (mm)`))) +
  geom_point(aes(col = SEX)) +
  geom_line(aes(col = SEX, group = ID))

# log-transformed frequency polygons
ggplot(rw, aes(x = log(`Width (mm)`))) +
  geom_freqpoly(aes(col = SEX))
