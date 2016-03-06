class MyBooleanType < ActiveRecord::Type::Integer
  def serialize(value)
    if value.instance_of?(TrueClass)
      "true"
    elsif value.instance_of?(FalseClass)
      "false"
    else
      value
    end
  end
end
