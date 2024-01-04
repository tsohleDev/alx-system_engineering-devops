#!/usr/bin/env ruby

# The regular expression must match a hb followed by more than 1 t's, and then an n
print ARGV[0].scan(/hbt+n/).join
