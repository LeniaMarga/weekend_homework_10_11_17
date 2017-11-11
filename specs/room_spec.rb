require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms.rb')
require_relative('../song.rb')
require_relative('../guest.rb')

class TestRoom < MiniTest::Test

  def setup()
    @song_1 = Song.new('Hotel California', 'Eagles')
    @song_2 = Song.new('Staying Alive', 'Bee Gees')
    @song_3 = Song.new('I like to move it', 'Magadascar Soundtrack' )
    @guest_1 = Guest.new('Mary', 30)
    @guest_2 = Guest.new('Mark', 50)
    @guests = [@guest_1, @guest_2]
    @playlist = [@song_1, @song_2, @song_3]
    @room_1 = Room.new('Chinese fantasy', @playlist, @guests)
  end

  # def test_if_room_is_full
  #   @room_1.room_capacity()
  #   assert_equal(false, @room_1.room_capacity)
  #   assert_equal("4 guests", @guests.count)
  # end

  def test_guest_check_in_person
    assert_equal("1 guest for room Chinese fantasy, enjoy!", @room_1.guest_check_in(@guest_1, @room_1))
  end

  def test_guest_check_out
    assert_equal("Bye! Hope you enjoyed!", @room_1.guest_check_out(@guest_2))
  end

  def test_add_song_to_room
    assert_equal("I like to move it at room Chinese fantasy!", @room_1.add_song_to_room(@song_3, @room_1))
  end

  def test_show_room_paylist
    assert_equal("The playlist is: Hotel California, Staying Alive, I like to move it", @room_1.show_playlist(@playlist))
  end

  def test_find_favourite_song
    assert_equal("Whoo!", @playlist.find_favourite_song(@song_3))
  end

end
