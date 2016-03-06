class MyMoney < Struct.new(:amount, :currency)
end

class MyMoneyType < ActiveRecord::Type::Integer
  def initialize(currency_converter: nil)
    @currency_converter = currency_converter
  end

  def cast(value)
    puts "call cast"
    if !value.kind_of?(Numeric) && value.include?('$')
      price_in_dollars = value.gsub(/\$/, '').to_f
      super(price_in_dollars * 100)
    else
      super
    end
  end

  # value will be the result of +deserialize+ or
  # +cast+. Assumed to be an instance of +Money+ in
  # this case.
  def serialize(value)
    puts "call serialize"
    @currency_converter.convert_to_bitcoins(value)
  end

  def deserialize(value)
    puts "call deserialize"
  end
end
