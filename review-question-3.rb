# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class
require "pry"

class User

  attr_reader :name
  attr_accessor :user

  def initialize(name)
    @name = name
  end

  def photos
    Photo.all.select do |photo|
      photo.user == self
    end
  end
end

class Photo
  attr_accessor :user
  @@all = []

  def initialize
    @@all << self
  end

  def comments
    Comment.all.select do |comment|
      comment.photo == self
    end
  end

  def make_comment(string)
    comment = Comment.new(string)
    comment.photo = self
  end

  def self.all
    @@all
  end
end

class Comment
  @@all = []
  attr_reader :comment
  attr_accessor :photo
  def initialize(comment)
    @comment = comment
    @@all << self
  end

  def self.all
    @@all
  end
end

sandwich_photo = Photo.new
sophie = User.new("Sophie")

sandwich_photo.user = sophie
sandwich_photo.user.name
# => "Sophie"

sophie.photos
# => [#<Photo:0x00007fae2880b370>]


sandwich_photo.comments
# => []

sandwich_photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
sandwich_photo.make_comment("this is such a NAAof other people's lunch")
sandwich_photo.comments
# => [#<Comment:0x00007fae28043700>]

Comment.all
#=> [#<Comment:0x00007fae28043700>]
pry
