#!/usr/bin/env ruby

# The regular expression /hbt*n/ matches the string "hbn" in the input text.
print ARGV[0].scan(/hbt{2,}n/).join
