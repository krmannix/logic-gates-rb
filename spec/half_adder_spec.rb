require "minitest/autorun"
require File.expand_path('../../main', __FILE__)

class HalfAdderSpec < Minitest::Test
  def test_false_false_input
    circuit = HalfAdder.new(false, false)

    assert_equal false, circuit.sum
    assert_equal false, circuit.carry
  end

  def test_false_true_input
    circuit = HalfAdder.new(false, true)

    assert_equal true, circuit.sum
    assert_equal false, circuit.carry
  end

  def test_true_false_input
    circuit = HalfAdder.new(true, false)

    assert_equal true, circuit.sum
    assert_equal false, circuit.carry
  end

  def test_true_true_input
    circuit = HalfAdder.new(true, true)

    assert_equal false, circuit.sum
    assert_equal true, circuit.carry
  end
end
