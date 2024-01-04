#!/usr/bin.env ruby

# The regular expression /[A-Z]/ matches any capital letter in the input text.
print ARGV[0].scan(/[A-Z]/).join
