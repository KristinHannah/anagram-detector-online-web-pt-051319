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
    new_match = ana.split("").sort.join("").match(self.word.split("").sort.join(""))
    if new_match != nil 
      new_array << new_match 
    end 
  end
  new_array.uniq 
  new_array.delete('nil')
  new_array
end
  
end 