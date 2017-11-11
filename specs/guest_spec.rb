require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')
require_relative('../song.rb')

class TestGuest < MiniTest::Test

  def setup
    @song_1 = Song.new('Hotel California', 'Eagles')
    @guest_1 = Guest.new('Eleni', 40)
  end

  def test_guest_name
    assert_equal('Eleni', @guest_1.name)
  end

  def test_add_favourite_song
    assert_equal('Hotel California', @guest_1.add_favourite_song(@song_1))
  end

end
