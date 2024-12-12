class Book < ApplicationRecord
  belongs_to :author
  has_many :borrowings, dependent: :destroy
  has_many :borrowers, through: :borrowings

  validates :title, :published_year, presence: true
end
