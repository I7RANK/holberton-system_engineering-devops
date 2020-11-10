#!/usr/bin/env ruby
arg = ARGV[0]

expreg = arg.scan(/h.n/).join

puts expreg
