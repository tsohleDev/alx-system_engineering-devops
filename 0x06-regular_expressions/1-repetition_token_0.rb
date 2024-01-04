#!/usr/bin/env ruby

# The regular expression must match a hb followed by 2 to 5 t's, and then an n
print ARGV[0].scan(/hbt{2,}n/).join
