class PriceWithTaxType < ActiveRecord::Type::Integer
  def initialize(tax:)
    @tax = tax
  end

  def serialize(value)
    (value * @tax).to_i
  end

  def deserialize(value)
    value
  end
end
