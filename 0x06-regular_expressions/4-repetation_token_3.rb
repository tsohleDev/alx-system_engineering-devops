#!/usr/bin/env ruby

# The regex /hbt*n/ matches the same text as hbtn with any number of t characters between the h and the n (including 0).
print ARGV[0].scan(/hbt*n/).join
