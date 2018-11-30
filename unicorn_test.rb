gem 'minitest', '~> 5.0' #find version of minitest to use
require 'minitest/autorun' #load minitest
require 'minitest/pride' #coloured CLI output
require_relative 'unicorn'

#Test Suite - create class inheriting from Minitest::Test
class UnicornTest < Minitest::Test
   def test_it_has_a_name
    unicorn = Unicorn.new("Saweeda")
    assert_equal "Saweeda", unicorn.name
   end

   def test_it_can_be_named_something_else
    unicorn = Unicorn.new("Kehinde")
    assert_equal "Kehinde", unicorn.name
   end

   def test_it_is_white_by_default
    unicorn = Unicorn.new("Shannon")
    assert_equal "white", unicorn.color
   end

   def test_it_knows_if_it_is_white
    unicorn = Unicorn.new("Jess")
    assert unicorn.white?, "Jess should be white, but isn't"
   end

   def test_it_does_not_have_to_be_white
    unicorn = Unicorn.new("Dre", "purple")
    assert_equal "purple", unicorn.color
   end

   def test_it_knows_if_it_is_not_white
    unicorn = Unicorn.new("Zainab", "yellow")
    refute unicorn.white?, "Zainab thinks she's white, she's actually yellow!"
   end

   def test_unicorn_says_sparkly_stuff
    unicorn = Unicorn.new("Abdul", "gold")
    assert_equal "**;* wonderful **;*", unicorn.say("wonderful")
   end

   def test_unicorn_says_different_sparkly_stuff
    unicorn = Unicorn.new("Tosin")
    assert_equal "**;* splendiferous **;*", unicorn.say("splendiferous")
   end
end

=begin
Really need to focus on moving really slowly and just about passing the test. 
More practice required for sure!!1
=end