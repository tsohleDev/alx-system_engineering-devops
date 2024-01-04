#!/usr/bin/env ruby

# The regular expression /School/ matches the string "School" in the input text.
print ARGV[0].scan(/School/).join
