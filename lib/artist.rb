class Artist

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(artist_name)
    artist = self.all.detect { |artist| artist.name == artist_name }
    if artist == nil
      new_artist = Artist.new(artist_name)
      new_artist.save
      new_artist
    else
      artist
    end
  end

  def print_songs
    @songs.each { |song| puts song.name }
  end

end
