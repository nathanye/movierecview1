class Review < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  has_many :reviews
  validates :title, presence: true
end
