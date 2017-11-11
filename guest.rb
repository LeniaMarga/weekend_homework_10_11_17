class Guest

  attr_accessor :name, :wallet

  def initialize (name, wallet)
    @name = name
    @wallet = wallet
    @favourite_song = ""
  end

  def return_favourite_song(song)
    @favourite_song = song
    return @favourite_song.song_name
  end
end
