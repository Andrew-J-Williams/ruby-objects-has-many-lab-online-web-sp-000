class Song

  attr_accessor :name, :artist

  @@all = [] # Class variable that is an empty array.

  def initialize(name) # As we initliaze each song, we capture it's name.
    @name = name
    @@all << self # Then, we take 
  end

  def self.all
    @@all
  end

  def artist_name
    @artist == nil ? nil : @artist.name
  end

end
