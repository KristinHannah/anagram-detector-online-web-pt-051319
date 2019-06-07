# Your code goes here!
require "pry"

class Anagram 
  attr_accessor :word
  
  def initialize(word)
    @word = word 
  end 
  
  def match(array)
   # array.find {|w| w.split(" ").sort == self.word.split(" ").sort}
   array.each do |ana|
    ana.split("").sort.match(self.split("").sort)
    return ana
  end
end
  
end 