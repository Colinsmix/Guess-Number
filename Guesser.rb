# Generates a random number, asks for a guess from the user,
# and determines whether the guess it too high or too low.
class Guesser
  attr_accessor :random_number, :guess_number

  def generate_number
    @random_number = rand(100)
  end

  def get_guess
    print 'Please enter a number between 0 and 100: '
    @guess_number = gets.chomp
  end

  def check_number
    puts 'Too high! Guess again!' if @guess_number.to_f > @random_number.to_f
    puts 'Too low! Guess again!' if @guess_number.to_f < @random_number.to_f
    puts 'You win!' if @guess_number.to_f == @random_number.to_f
  end

  def check_validity
    if @guess_number.to_f < 0 || @guess_number.to_f > 100
      puts 'Invalid Input! Please pick a number in between 0 and 100'
      return true
    end
  end
end
