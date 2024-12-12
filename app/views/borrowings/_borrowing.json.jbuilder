json.extract! borrowing, :id, :book_id, :borrower_id, :borrowed_on, :returned_on, :created_at, :updated_at
json.url borrowing_url(borrowing, format: :json)
