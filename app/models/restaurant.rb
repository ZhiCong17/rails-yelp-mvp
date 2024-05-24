class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  # must have name, address, category
  validates :name, :address, :category, presence: true
  # category belongs to ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian],
                                    message: '%<value>s is not a valid size' }
end
