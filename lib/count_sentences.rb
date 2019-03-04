require 'pry'

class String

  def sentence?
     self.end_with?(".")
  end

  def question?
    self.end_with?("?")

  end

  def exclamation?
     self.end_with?("!")

  end
  
  def split_sentence
    self.split.map do |word|
      word[-1]
    end
  end

  def count_sentences
    count = 0
    array = self.split.map do |word|
              word[-1]
            end 
            binding.pry
    array.each do |word|
      if word.include?("!", "?", ".")
        count += 1
      end
      return count 
    end
  end
end 
