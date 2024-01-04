#!/usr/bin/env ruby

# The regular expression /h[b]{0,1}tn/ matches the string "hbn" in the input text.
print ARGV[0].scan(/hb?tn/).join
