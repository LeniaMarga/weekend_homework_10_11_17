class Room

  attr_accessor :name, :playlist, :guests

  def initialize (name, playlist, guests)
    @name = name
    @playlist = []
    @guests = []
    @till = 0
    @price = 10
    @max_guests = 5
  end

  def room_capacity(guests)
    if guests.count <= @max_guests
      return "#{@guests.count} guests"
    else
      return "full"
    end
  end


  def guest_check_in(guest, room)
    if guest.wallet >= @price && @guests.count < @max_guests
      guest.wallet -= @price
      @till += @price
      @guests << guest
      return "#{@guests.count} guest for room #{room.name}, enjoy!"
    else
      return "Sorry, cannot enter"
    end
  end

  def guest_check_out(guest)
     @guests.delete(guest)
     return "Bye! Hope you enjoyed!"
  end

  def add_song_to_room(song, room)
    @playlist << song
    return "#{song.song_name} at room #{room.name}!"
  end

  def show_playlist(playlist)
    room_playlist = []
    for song in playlist
      room_playlist << song.song_name
    end
    return "The playlist is: #{room_playlist.join(', ')}"
  end

  def found_favourite_song(guest, playlist, song)
    for song in playlist
      if guest.add_favourite_song(song) == song.song_name
        return "Whoo!"
      end
    end
  end

end
