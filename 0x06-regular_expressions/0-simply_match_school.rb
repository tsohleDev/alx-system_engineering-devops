#!/usr/bin/env ruby

# The regular expression must a string with the word "School"
print ARGV[0].scan(/School/).join
