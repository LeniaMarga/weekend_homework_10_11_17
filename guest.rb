class Guest

  attr_accessor :name, :wallet

  def initialize (name, wallet)
    @name = name
    @wallet = wallet
    @favourite_song = ""
  end

  def add_favourite_song(song)
    @favourite_song = song
    return @favourite_song.song_name
  end

  # def guess(song_guess)
  #   guest_playlist = []
  #   guest_playlist << song_guess unless @guest_1.favourite_song(song_guess) == song_guess
  # end

end
