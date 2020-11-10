#!/usr/bin/env ruby
arg = ARGV[0]

expreg = arg.scan(/(Holberton)/).join

puts expreg
