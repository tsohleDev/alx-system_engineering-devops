#!/usr/bin.env ruby

# The regular expression must match capital letters
print ARGV[0].scan(/[A-Z]/).join
