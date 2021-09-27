require 'pry'

class String

  def sentence?
    if self.end_with?(".") 
      return true
    else 
      return false 
    end
  end

  def question?
    if self.end_with?("?") 
      return true
    else 
      return false 
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true 
    else
      return false
    end
  end

  def count_sentences
    sentences = self.split(/\?|\.|!/)
    noEmptySentence = sentences.reject { |sentence| sentence.empty?} #returns a new array that do not contain empty entries 
    noEmptySentence.count

  end
end