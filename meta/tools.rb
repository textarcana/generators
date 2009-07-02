# Meta tools
# 
# Mapping the program space.
#
# Use these to determine where you are.

require 'test/unit'

class MetaTools

  def basics

    # $. is the last line executed by the interpreter, so it starts
    # counting from the first library loaded and is therefore not useful
    # for giving helpful feedback about an application under test

    notline17 = $. == 17

    # puts $.

    # puts $0

    tools_rb = $0 == "tools.rb"

    line25 =  __LINE__ == 25

    # puts __LINE__

    #puts line24 && 

    tools_rb && line25 && ( ! notline17) 

  end

  def initialize

  end

end

class TestMetaTools < Test::Unit::TestCase

  def test_sanity

    m = MetaTools.new

    assert m.basics == true

  end

  def test_name_of_test

    #    puts self.instance_variables.sort

    warn_with_line.call

    assert_equal self.name, "test_name_of_test(TestMetaTools)"

  end

  def warn_with_line

    f = lambda{
    
      warn "#{__FILE__}:#{__LINE__}: there is an error in #{self.name}"
      
    }

  end

end


