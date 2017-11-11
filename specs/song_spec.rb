require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')

class TestSong < MiniTest::Test

  def setup
    @song_1 = Song.new('Hotel California','Eagles')
  end

  def test_song_name
    assert_equal('Hotel California', @song_1.song_name)
  end

end
