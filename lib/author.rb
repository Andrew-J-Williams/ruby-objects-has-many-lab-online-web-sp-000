class Author

  attr_accessor :name, :post

  @@count = 0

  def initialize(name)
    @name = name
  end

  def posts
    @post
  end

end
