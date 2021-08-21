class Project < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
  validates :description, length: { minimum: 10 }

  has_many :partnerships, dependent: :destroy
  has_many :favourites, dependent: :destroy
end
