#!/usr/bin/env ruby

# The regular expression must match a hb followed by 0 or more t's, and then an n
print ARGV[0].scan(/hbt*n/).join
