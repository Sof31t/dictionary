class Statement < ActiveRecord::Base
  has_many :occurences
  has_many :words, through: :occurences

   # Remove new lines : \n
  @@new_line = "\\n"

  # Remove anything to keep only words
  @@regexp = Regexp.new(' [\p{Any}]\'|\n|-|[^a-zA-ZéèàùêûîôŒ \']') 

  def clean_definition
    self.definition.gsub(@@new_line,' ').gsub(@@quote,' ')
  end

  def get_definition_words
    splitted_definition = self.clean_definition.split(' ')
    array = []
    splitted_definition.each do |word|
      array << word
    end
    array       # Return array of definition words
  end

end