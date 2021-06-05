# one round of Guessing Game is one instance
class GuessingGame

  # initializer
  def initialize(min, max)
    # generate a randon number between min and max
    @secret_num = rand(min..max)

    # set game over to false
    @game_over = false

    # set number of attempts to zero
    @num_attempts = 0
  end

  # return number of attempts
  def num_attempts
    @num_attempts
  end

  # return game over status
  def game_over?
    @game_over
  end

  # check the number
  def check_num(num)
    # increment number of attempts
    @num_attempts += 1
    #
    # # set @game_over to true, if number equals random number
    if num == @secret_num
      @game_over = true
      puts "You win"
    elsif num > @secret_num
      puts "Too big"
    elsif num < @secret_num
      puts "Too small"
    end
  end

  def ask_user
    puts "Enter a number"
    guessed_number = gets.chomp.to_i
    check_num(guessed_number)
  end

end
