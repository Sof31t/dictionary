def composable(str, words)
  composable_aux(str, words, {})
end

def composable_aux(str, words, memo)
  return true if str == ""                # The base case
  return memo[str] unless memo[str].nil?  # Return the answer if we already know it

  memo[str] = false              # Assume the answer is "false"

  words.each do |word|           # For each word in the list:
    length = word.length
    start  = str[0..length-1]
    rest   = str[length..-1]
    # If the test string starts with this word, and the remaining part
    # of the test string is also composable, the answer is true.
    if start == word and composable_aux(rest, words, memo)
      memo[str] = true           # Mark the answer as true
    end
  end

  memo[str]                      # Return the answer
end

def prompt(*args)
    print(*args)
    gets.chomp
end