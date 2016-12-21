class Deck < ActiveRecord::Base
  has_many :cards


  #have image method that gets a random image from cards.sample images
end
