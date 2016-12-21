class Card < ActiveRecord::Base
  has_one :image
  belongs_to :set 
end
