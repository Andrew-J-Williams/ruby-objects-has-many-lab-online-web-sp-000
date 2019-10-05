class Song

  attr_accessor :name, :artist # The artist attribute present in the 'Song' class is equal to the instance of the 'Artist' class.

  @@all = [] # Class variable that is an empty array.

  def initialize(name) # As we initliaze each song, we capture it's name.
    @name = name
    @@all << self # Then, we take each instance and push it into our class variable, creating a list of songs.
  end

  def self.all # Like the '@@count' in
    @@all
  end

  def artist_name
    @artist == nil ? nil : @artist.name
  end

end
