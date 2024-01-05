#!/usr/bin/env ruby

# The regular expression must match a 10 digit phone number
print ARGV[0].scan(/^45[0-9]{8}$/).join
