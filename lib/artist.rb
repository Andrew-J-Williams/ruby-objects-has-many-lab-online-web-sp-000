class Artist

  attr_accessor :name, :songs # Our getter and setter methods exist for these variables.

  @@count = 0 # We create a class variable for our count, so that it can be

  def initialize(name)
    @name = name
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    song.artist = self
    @@count += 1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
    @@count += 1
  end

  def self.song_count
    @@count
  end

end
