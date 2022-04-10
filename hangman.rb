# Hardcode solutionds
def hangman(word, guess)
  word.gsub(/[^#{guess.join('')}]/, "_")
end

puts hangman('hangman', ['h', 'g'])

# Interactive solution
def hangman(word)
  guess = []
  until guess.last == ""
    print "Guess a letter in the word, or hit enter to see the result: "
    guess << gets.chomp
  end
  word.gsub(/[^#{guess.join('')}]/, "_")
end

puts hangman('hangman')
