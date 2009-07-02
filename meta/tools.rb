# Meta tools
# 
# Mapping the program space.
#
# Use these to determine where you are.

require 'test/unit'

notline24 = $. == 24

# puts $.

# puts $0

tools_rb = $0 == "tools.rb"

line34 =  __LINE__ == 34

# puts __LINE__

#puts line24 && 

puts tools_rb && line34 && ( ! notline24) 
