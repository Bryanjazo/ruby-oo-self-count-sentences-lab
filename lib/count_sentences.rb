require 'pry'

class String

  def sentence?
    if end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if end_with?("?")
      true
    else false
    end
  end

  def exclamation?
    if end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
     self.split(/[.!?]/).map{|x| !(x.match(/\w+/).nil?)}.reject{|x| x == false}.size
  end
end
