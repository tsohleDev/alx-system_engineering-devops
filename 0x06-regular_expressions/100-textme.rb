#!/usr/bin/env ruby

# The regular expression must match a string with the following requirements:
# 1. The word "from", followed by a colon, followed by one or more of any character, followed by a space
# 2. The word "to", followed by a colon, followed by one or more of any character, followed by a space
# 3. The word "flags", followed by a colon, followed by one or more of any character, followed by a space
puts ARGV[0].scan(/\[from:(\+?\w+)\] \[to:(\+?\w+)\] \[flags:(-?\d:-?\d:-?\d:-?\d:-?\d)\]/).join(",")
