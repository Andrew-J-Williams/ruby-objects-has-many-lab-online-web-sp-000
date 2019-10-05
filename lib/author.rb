class Author

  attr_accessor :name

  @@count = 0

  def initialize(name)
    @name = name
  end

  def posts
    Post.all.select {|post| post.title == self}
  end

  def add_post
    post.name = self
  end


end
