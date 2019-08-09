require_relative 'game_shuffle.rb'

puts "-----------------------"
puts "Game Tebak Kata"
puts "-----------------------"

game = GameShuffle.new()

quit = false

while (!quit)
    prompt = "\ntype 'exit' to quit this game or 'enter' to continue) > "
    print prompt
    choices = gets.chomp

    if (choices.downcase == 'exit')
        quit = true
    else
        game.words_shuffle()
        game.random()


        print "Tebak Kata : "
        puts game.question()

        prompt = "Jawab : "
        print prompt

        answere = gets.chomp
        puts game.answere(answere)
    end
end


puts
puts '-----------------------------------------------'
puts 'Terima Kasih Telah Bermain Game Tebak Kata'
puts '-----------------------------------------------'
puts