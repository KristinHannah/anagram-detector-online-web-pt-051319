# Your code goes here!
require "pry"

class Anagram 
  attr_accessor :word
  
  def initialize(word)
    @word = word 
  end 
  
  def match(array)
   # array.find {|w| w.split(" ").sort == self.word.split(" ").sort}
   new_array = []
   array.each do |ana|
    if ana.split("").sort == self.word.split("").sort
      new_array << ana
    end 
  end
  new_array
end
  
end 