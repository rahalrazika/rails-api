class Partnership < ApplicationRecord
  validates :date, presence: true
  belongs_to :user
  belongs_to :project
end
