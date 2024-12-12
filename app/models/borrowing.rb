class Borrowing < ApplicationRecord
  belongs_to :book
  belongs_to :borrower

  validates :borrowed_on, presence: true
  validates :returned_on, presence: true, comparison: { greater_than: :borrowed_on, message: "must be after the borrowed date" }, if: -> { returned_on.present? }
end
