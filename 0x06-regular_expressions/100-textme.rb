#!/usr/bin/env ruby

# The regular expression /from:(\+?\w+)\] \[to:(\+?\w+)\] \[flags:(-?\d:-?\d:-?\d:-?\d:-?\d)\]/ matches the string starting with from:, followed by any number of characters, followed by ] [to:, followed by any number of characters, followed by ] [flags:, followed by any number of characters, followed by ].
puts ARGV[0].scan(/\[from:(\+?\w+)\] \[to:(\+?\w+)\] \[flags:(-?\d:-?\d:-?\d:-?\d:-?\d)\]/).join(",")
