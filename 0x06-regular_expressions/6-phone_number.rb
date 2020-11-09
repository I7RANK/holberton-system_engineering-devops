#!/usr/bin/env ruby
arg = ARGV[0]

expreg = arg.match(/^[0-9]{10}$/)

puts expreg
