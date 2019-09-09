require "minitest/autorun"
require File.expand_path('../../main', __FILE__)

class NotSpec < Minitest::Test
  def test_false_input
    output = Not.new(false).output

    assert_equal true, output
  end

  def test_true_input
    output = Not.new(true).output

    assert_equal false, output
  end
end
