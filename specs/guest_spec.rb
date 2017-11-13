require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')
require_relative('../song.rb')
require_relative('../room.rb')

class TestGuest < MiniTest::Test

  def setup
    @guest_1 = Guest.new('Eleni', 40)
    @song_1 = Song.new('Hotel California', 'Eagles')
    @song_2 = Song.new('Staying Alive', 'Bee Gees')
    @song_3 = Song.new('I like to move it', 'Magadascar Soundtrack' )
    @playlist = [@song_1, @song_2, @song_3]
    @room_1 = Room.new('Chinese fantasy', @playlist, @guests)
  end

  def test_guest_name
    assert_equal('Eleni', @guest_1.name)
  end

  def test_add_favourite_song
    assert_equal('Hotel California', @guest_1.add_favourite_song(@song_1))
  end

  # def test_guess_song
  #   @guest_1.guess("I feel good")
  #   assert_equal(["I feel good"], @guest_1.guess)
  # end

end
