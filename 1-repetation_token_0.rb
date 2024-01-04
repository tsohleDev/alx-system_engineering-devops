#!/usr/bin/env ruby

# The regular expression /hbt*n/ matches the string "hbn" in the input text.
puts ARGV[0].scan(/hbt*n/).join
