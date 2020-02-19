class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CUISINE = %w[chinese italian japanese french belgian]
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CUISINE }
end
