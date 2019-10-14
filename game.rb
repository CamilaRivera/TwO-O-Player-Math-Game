class Player
  attr_reader :life

  def initialize
    @life = 3
  end

  def loseLife
    @life -= 1
  end

end

class Game

  def initialize
  @player1 = Player.new
  @player2 = Player.new
  end

  def randomNumber
    rand(1 ... 20)
  end

  def gamequestion
    while(@player1.life > 0 && @player2.life > 0)
      firstNumber = randomNumber
      secondNumber = randomNumber
      puts "Player 1: What does #{firstNumber} plus #{secondNumber} equals?"
      answer = gets.to_i
      if(answer != (firstNumber + secondNumber))
        @player1.loseLife
        puts 'Seriously? No!'
        if(@player1.life == 0)
          puts "player 2 wins with a score of #{@player2.life}/3"
          break
        end
      else
        puts 'YES! you are correct'
      end
      puts "P1: #{@player1.life}/3 vs P2: #{@player2.life}/3"
      firstNumber = randomNumber
      secondNumber = randomNumber
      puts "Player 2: What does #{firstNumber} plus #{secondNumber} equals?"
      answer = gets.to_i
      if(answer != (firstNumber + secondNumber))
        @player2.loseLife
        puts 'Seriously? No!'
        if(@player2.life == 0)
          puts "player 1 wins with a score of #{@player1.life}/3"
          break
        end
      else
        puts 'YES! you are correct'
      end
      puts "P1: #{@player1.life}/3 vs P2: #{@player2.life}/3"
    end
  end
end

game = Game.new
game.gamequestion
