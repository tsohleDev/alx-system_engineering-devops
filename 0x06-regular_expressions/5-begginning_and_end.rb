#!/usr/bin/env ruby

# The regular expression /h.n/ matches the string starting with h, ending with n, and can have any single character in between.
print ARGV[0].scan(/^h.n$/).join
