#!/usr/bin/env ruby

# The regex /hb[t]{1,}n/ matches the same text as hbtn with any number of t characters between the h and the n (excluding 0).
print ARGV[0].scan(/hbt+n/).join
