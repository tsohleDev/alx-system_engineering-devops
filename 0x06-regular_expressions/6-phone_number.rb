#!/usr/bin/env ruby

# The regular expression /4[0-9]{9}/ matches a 10 digit phone number that starts with 4.
print ARGV[0].scan(/[0-10]{9}/).join
