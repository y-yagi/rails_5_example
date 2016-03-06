class Book < ApplicationRecord
  attribute :price, :price_with_tax, tax: 1.05
  attribute :published_on, :date, default: -> { Date.current }
end
