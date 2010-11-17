require 'minitest/autorun'
require 'refine'

class ExtenderTest < MiniTest::Unit::TestCase
  module Refining
    refine String do
      def foo(x) x * 42 end
    end
  end

  def test_foo
    using Refining
    assert_equal 42, "foo".foo(1)
  end
end
