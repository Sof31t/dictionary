def fill_statements
  statements = CSV.open( "assets/Dictionnaire.csv", encoding: "ISO-8859-1")
  statements.each do |row|
    # Add statements ( word, definition )
    statement = Statement.create(:word => row[0], :definition => row[1])  
  end
end

def fill_words
  Statement.all.each.each do |statement|              # For each statement
    statement.get_definition_words.each do |word_str| # For each word of the definition

      word = Word.find_by_word(word_str)              # Try to find the word
      if word.nil?                                    # If the word doesn't exist
        word = Word.create(word: word_str)            # It is added to the table words
      end

      # Try to find occurence
      occurence = Occurence.find_by(statement_id: statement.id, word_id: word.id)   
      if occurence.nil?  # If occurence doesn't exist
        # It is added to the table occurences
        Occurence.create(statement_id: statement.id, word_id: word.id, number: 1)
      else
        # Else, number is increased
        occurence.number += 1
        occurence.save
      end
    end
  end
end


