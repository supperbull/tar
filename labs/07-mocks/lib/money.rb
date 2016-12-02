# require 'extend_enumerable'

class Money
  attr_reader :value, :currency

  def initialize(value, currency)
    @value = value.to_f.round(2)
    @currency = currency
  end

  def to_s
    format('%.2f %s', value, currency)
  end

  def *(other)
    Money.new(value * other, currency)
  end

  def +(other)
    if other.currency != currency
      raise ArgumentError,
            "Can't add monies due to different currency: #{other.inspect} and #{inspect}."
    end

    Money.new(value + other.value, currency)
  end

  def -(other)
    if other.currency != currency
      raise ArgumentError,
            "Can't substract monies due to different currency: #{other.inspect} and #{inspect}."
    end
    Money.new(value - other.value, @currency)
  end

  def ==(other)
    currency == other.currency && @value == other.value
  end

  def positive?
    @value > 0
  end

  # This is a version of sum that works with different currencies.
  # Returns an array of Money instances, one for each currency that appeared
  # in the input array.
  def self.sum(arr)
    return 0 if arr.empty?
    arr.group_by(&:currency).values.map(&:sum)
  end
end
