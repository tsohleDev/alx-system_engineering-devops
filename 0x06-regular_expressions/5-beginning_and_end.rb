#!/usr/bin/env ruby

# The regular expression must match a string that starts with h, ends with n, and can have any single character in between
print ARGV[0].scan(/^h.n$/).join
