require "minitest/autorun"
require File.expand_path('../../main', __FILE__)

class AndSpec < Minitest::Test
  def test_false_false_input
    output = And.new(false, false).output

    assert_equal false, output
  end

  def test_false_true_input
    output = And.new(false, true).output

    assert_equal false, output
  end

  def test_true_false_input
    output = And.new(true, false).output

    assert_equal false, output
  end

  def test_true_true_input
    output = And.new(true, true).output

    assert_equal true, output
  end
end
