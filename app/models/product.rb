class Product < ApplicationRecord
  currency_converter = ConversionRates.new
  attribute :price_in_bitcoins, :my_money, currency_converter: currency_converter
end
