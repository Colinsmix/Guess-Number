require './Guesser.rb'
require 'pry'

g = Guesser.new

g.generate_number
while g.random_number != g.guess_number.to_f
  g.get_guess
  if g.check_validity
  else
  g.check_number
  end
end
