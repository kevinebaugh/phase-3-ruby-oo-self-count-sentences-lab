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

  def count_sentences
    count = 0
    count += self.split(". ").size - 1
    count += self.split("! ").size - 1
    count += self.split("? ").size - 1
    if count > 0
      count + 1
    else
      0
    end
  end
end
