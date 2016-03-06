class StoreListing < ApplicationRecord
  attribute :price_in_cents, :my_money

  attribute :my_default_proc, :datetime, default: -> { Time.now }
  attribute :my_string, :string
  attribute :my_int_array, :integer, array: true
  attribute :my_float_range, :float, range: true
end
