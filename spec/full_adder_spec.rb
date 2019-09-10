require "minitest/autorun"
require File.expand_path('../../main', __FILE__)

class FullAdderSpec < Minitest::Test
  def test_false_false_false_input
    circuit = FullAdder.new(false, false, false)

    assert_equal false, circuit.sum
    assert_equal false, circuit.carry
  end

  def test_false_false_true_input
    circuit = FullAdder.new(false, false, true)

    assert_equal true, circuit.sum
    assert_equal false, circuit.carry
  end

  def test_false_true_false_input
    circuit = FullAdder.new(false, true, false)

    assert_equal true, circuit.sum
    assert_equal false, circuit.carry
  end

  def test_false_true_true_input
    circuit = FullAdder.new(false, true, true)

    assert_equal false, circuit.sum
    assert_equal true, circuit.carry
  end

  def test_true_false_false_input
    circuit = FullAdder.new(true, false, false)

    assert_equal true, circuit.sum
    assert_equal false, circuit.carry
  end

  def test_true_false_true_input
    circuit = FullAdder.new(true, false, true)

    assert_equal false, circuit.sum
    assert_equal true, circuit.carry
  end

  def test_true_true_false_input
    circuit = FullAdder.new(true, true, false)

    assert_equal false, circuit.sum
    assert_equal true, circuit.carry
  end

  def test_true_true_true_input
    circuit = FullAdder.new(true, true, true)

    assert_equal true, circuit.sum
    assert_equal true, circuit.carry
  end
end
