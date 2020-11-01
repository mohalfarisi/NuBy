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


puts "PLAYERS INFO"
p1 = Player.new("Jon", 50, 20)
p2 = Player.new("Harry", 60, 15)
p3 = Player.new("Ezio", 40, 10)
p4 = Player.new("Demon", 100, 50)
warriors=[p1, p2, p3]

# player info
[p1, p2, p3, p4].each {|x| puts x}
puts "\n"

# BATTLE
while !warriors.empty? && p4.alive?
    warriors.each do |warrior|
        warrior.hit(p4)
    end
    p4.hit(warriors.sample)
    puts"\n"

    # player info
    warriors.each {|x| puts x}
    puts p4

    # dead warrior out
    warriors.each do |warrior|
        if !warrior.alive?
            puts "#{warrior.name} out of the game"
            warriors.delete_at(warriors.find_index(warrior))
        end
    end
    puts"\n"
end

if !warriors.empty?
    puts "warriors WON!"
elsif p4.alive?
    puts "#{p4.name} WON!"
else
    puts "TIE!"
end
