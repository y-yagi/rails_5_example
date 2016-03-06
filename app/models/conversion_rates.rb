class ConversionRates
  def convert_to_bitcoins(value)
    value.amount * 0.1 if value
  end
end
