class Review < ActiveRecord::Base

  belongs_to :product

  validates :product
  validates :user
  validates :description
  validates :rating

end
