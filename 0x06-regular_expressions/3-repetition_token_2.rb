#!/usr/bin/env ruby
arg = ARGV[0]

expreg = arg.scan(/hbt+n/).join

puts expreg
