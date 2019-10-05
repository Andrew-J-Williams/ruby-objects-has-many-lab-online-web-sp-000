class Author

  attr_accessor :name, :post

  @@count = 0

  def initialize(name)
    @name = name
  end

  def posts
    Post.all.select {|post| post.title == self}
  end

  def add_post(post)
    post.name = self
  end


end
