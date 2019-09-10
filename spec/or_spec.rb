require "minitest/autorun"
require File.expand_path('../../main', __FILE__)

class OrSpec < Minitest::Test
  def test_false_false_input
    output = Or.new(false, false).output

    assert_equal false, output
  end

  def test_false_true_input
    output = Or.new(false, true).output

    assert_equal true, output
  end

  def test_true_false_input
    output = Or.new(true, false).output

    assert_equal true, output
  end

  def test_true_true_input
    output = Or.new(true, true).output

    assert_equal true, output
  end
end
