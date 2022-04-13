def hangman(word)
  guesses = ''
  until guesses == ' '
    print 'Guess a letter in the word, or press enter to quit: '
    guess = gets.chomp
    if guess.empty?
      guesses = ' '
    elsif guess.match?(/[^A_Za-z]/)
      puts "\nYou must enter a letter. Try again.\n\n"
    else
      guesses = guesses.include?(guess) ? guesses : guesses + guess
      if word.gsub(/[#{guesses}]/, '') == ''
        puts "\nYou won: #{word}"
        guesses = ' '
      else
        puts "\n#{word.include?(guess) ? 'Hit:' : 'Miss:'} #{word.gsub(/[^#{guesses}]/, '_')}\n\n"
      end
    end
  end
end

hangman('hangman')
