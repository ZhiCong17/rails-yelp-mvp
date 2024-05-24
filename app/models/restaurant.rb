class Restaurant < ApplicationRecord
  CATEGORIES = %w[chinese italian japanese french belgian].freeze

  has_many :reviews, dependent: :destroy
  # must have name, address, category
  validates :name, :address, :category, presence: true
  # category belongs to ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: { in: CATEGORIES,
                                    message: '%<value>s is not a valid size' }
end
