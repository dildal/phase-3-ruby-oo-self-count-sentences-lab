require 'pry'

class String

  def sentence?
    !!self.match(/\.$/)
  end

  def question?
    !!self.match(/\?$/)
  end

  def exclamation?
    !!self.match(/\!$/)
  end

  def count_sentences
    self.split(/[\.\?\!]+/).length
  end
end

puts "This is a string! It has three sentences. Right?".count_sentences
pp "This, well, is a sentence. This is too!! And so is this, I think? Woo...".split(/[\.\?\!]+/)
