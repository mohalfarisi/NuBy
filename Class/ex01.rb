class Player
  attr_accessor :name, :health, :power
  def initialize(name, health, power)
    @name = name
    @health = health
    @power = power
  end

  def alive?
    @health > 0
  end

  def hit(opponent)
    opponent.health -= self.power
    puts "#{self.name} hits #{opponent.name}"
  end

  def to_s
    "#{name}: Health: #{health}, Power: #{power}"
  end
end



def fight(p1,p2,p3,p4)
  warriors=[p1,p2,p3]
  i=1
  while !warriors.empty? && p4.alive?

    puts "-----------------------------\n"
    puts "           TURN #{i}"
    puts "-----------------------------\n"

    warriors.each do |warrior|
      warrior.hit(p4)
    end
    p4.hit(warriors.sample)
    puts"\n"

    # dead warrior out
    warriors.each do |warrior|
      if !warrior.alive?
        puts "xxx #{warrior.name} out of the game xxx"
        puts"\n"
        warriors.delete_at(warriors.find_index(warrior))
      end
    end

    # player info
    show_info(p1,p2,p3,p4)

    i+=1
    puts"\n"
  end


    if !warriors.empty?
      puts "warriors WON!"
    elsif p4.alive?
      puts "#{p4.name} WON!"
    else
      puts "TIE!"
    end
end

def show_info(*p)
  p.each{|x|puts x if x.alive?}
end


puts "PLAYERS INFO"
player1 = Player.new("Jon", 50, 20)
player2 = Player.new("Harry", 60, 15)
player3 = Player.new("Ezio", 40, 10)
player4 = Player.new("Demon", 100, 50)

# player info
show_info(player1,player2,player3,player4)
fight(player1,player2,player3,player4)
