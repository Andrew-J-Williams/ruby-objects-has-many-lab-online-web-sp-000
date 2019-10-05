class Artist

  attr_accessor :name, :songs # Our getter and setter methods exist for these variables.

  @@count = 0 # We create a class variable for our song count, so that it can be utilized within the scope of the whole class.

  def initialize(name) # This initializes our class by using the name variable.
    @name = name
  end

  def songs # Method searches through our 'Song' array to see what songs are associated with a particular artist.
    Song.all.select {|song| song.artist == self} # The 'select' enumerator
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
