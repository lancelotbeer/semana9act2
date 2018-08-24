

class Roulette
  attr_accessor :numero, :apuesta

  def initialize
    @numero = numero.to_i
    @apuesta = apuesta.to_i
  end
  def play
    numero = 4
  end

  def guardarnumero(apuesta)
    r = (1..10).to_a

    print apuesta

    file = File.open('roulette_history.txt', 'a')
    file.puts "#{apuesta}"
    file.close
    # puts "\n\n"
    # print apuesta
    # if num == apuesta
    #
    # end
  end
end

n1 = Roulette.new
numrandom = rand(1..10)
n1.guardarnumero(numrandom)
