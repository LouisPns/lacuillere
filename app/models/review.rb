class Review < ActiveRecord::Base
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, :inclusion => (0..5), numericality: {only_integer: true}
  validates :restaurant, presence: true
end
