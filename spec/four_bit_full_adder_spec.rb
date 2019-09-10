require "minitest/autorun"
require File.expand_path('../../main', __FILE__)

class FourBitFullAdderSpec < Minitest::Test
  def test_zero_zero_false_input
    zero = number_to_bits(0)

    circuit = FourBitFullAdder.new(zero, zero, false)

    assert_equal 0, bits_to_number(circuit.sum)
    assert_equal false, circuit.carry
  end

  def test_zero_zero_true_input
    zero = number_to_bits(0)

    circuit = FourBitFullAdder.new(zero, zero, true)

    assert_equal 1, bits_to_number(circuit.sum)
    assert_equal false, circuit.carry
  end

  def test_three_six_false_input
    three = number_to_bits(3)
    six = number_to_bits(6)

    circuit = FourBitFullAdder.new(three, six, false)

    assert_equal 9, bits_to_number(circuit.sum)
    assert_equal false, circuit.carry
  end

  def test_one_thirteen_false_input
    one = number_to_bits(1)
    thirteen = number_to_bits(13)

    circuit = FourBitFullAdder.new(one, thirteen, false)

    assert_equal 14, bits_to_number(circuit.sum)
    assert_equal false, circuit.carry
  end

  def test_fifteen_fifteen_true_input
    fifteen = number_to_bits(15)

    circuit = FourBitFullAdder.new(fifteen, fifteen, true)

    assert_equal 15, bits_to_number(circuit.sum)
    assert_equal true, circuit.carry
  end

  private

  def number_to_bits(number)
    raise ArgumentError, 'number cannot be more than 15' if number > 15
    raise ArgumentError, 'number cannot be less than 0' if number < 0

    bits = Array.new(4, false)
    number.to_s(2).chars.reverse.map.with_index { |bit, index| bits[3 - index] = bit == '1' }

    bits
  end

  def bits_to_number(bits)
    bits.reverse.map.with_index do |bit, index|
      bit ? 2**index : 0
    end.sum
  end
end
