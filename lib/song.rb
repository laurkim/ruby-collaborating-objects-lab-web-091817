class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    filename_split = filename.split(" - ")
    artist_name = filename_split[0]
    song_name = filename_split[1]
    new_song = self.new(song_name)
    new_song.artist = Artist.find_or_create_by_name(artist_name)
    new_song.artist.add_song(song_name)
    new_song
  end

end
