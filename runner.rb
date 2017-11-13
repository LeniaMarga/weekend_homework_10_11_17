require_relative("./room")
require_relative("./song")
require_relative("./guest")

puts "Welcome to Karaoke. Do you have a favourtite song?"
input = gets.chomp
# hidden_word = Word.new(input)
# snowman = Game.new(hidden_word, Player.new("Player 1"))

song_guess = Song.new(input)
song_1 = Song.new('Hotel California', 'Eagles')
song_2 = Song.new('Staying Alive', 'Bee Gees')
song_3 = Song.new('I like to move it', 'Magadascar Soundtrack' )
guest= Guest.new("guest 1")
playlist = [song_1, song_2, song_3]
karaoke = Room.new('Chinese fantasy', playlist, guest)


print %x{clear}


until karaoke.room_capacity == "full" && karaoke.found_favourite_song
  puts "Welcome to Karaoke!"
  puts "#{karaoke.show_playlist}"
  puts "#{karaoke.found_favourite_song}"
  puts "Guess a song:"
  karaoke.add_favourite_song(gets.chomp[0])
  print %x{clear}
end

# puts "You found it! The word was #{snowman.reveal_word}" if snowman.is_won?
# puts "You suck! The word was #{input}" if snowman.is_lost?
