class Review < ApplicationRecord
  belongs_to :restaurant

  # must have content, rating
  validates :content, :rating, presence: true

  # rating must be an integer
  # rating must be a number between 0 and 5

  validates :rating, numericality: { only_integer: true, in: 0..5 }
end
