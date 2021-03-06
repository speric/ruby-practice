gem "minitest"
require 'minitest/autorun'
require_relative 'chopper'

class ChopperTest < Minitest::Test
  
  def setup
    @large_array = (0...100000).sort
  end
  
  def test_chop
    assert_equal(-1, Chopper.chop(3, []))
    assert_equal(-1, Chopper.chop(3, [1]))
    assert_equal(0,  Chopper.chop(1, [1]))

    assert_equal(0,  Chopper.chop(1, [1, 3, 5]))
    assert_equal(1,  Chopper.chop(3, [1, 3, 5]))
    assert_equal(2,  Chopper.chop(5, [1, 3, 5]))
    assert_equal(-1, Chopper.chop(0, [1, 3, 5]))
    assert_equal(-1, Chopper.chop(2, [1, 3, 5]))
    assert_equal(-1, Chopper.chop(4, [1, 3, 5]))
    assert_equal(-1, Chopper.chop(6, [1, 3, 5]))

    assert_equal(0,  Chopper.chop(1, [1, 3, 5, 7]))
    assert_equal(1,  Chopper.chop(3, [1, 3, 5, 7]))
    assert_equal(2,  Chopper.chop(5, [1, 3, 5, 7]))
    assert_equal(3,  Chopper.chop(7, [1, 3, 5, 7]))
    assert_equal(-1, Chopper.chop(0, [1, 3, 5, 7]))
    assert_equal(-1, Chopper.chop(2, [1, 3, 5, 7]))
    assert_equal(-1, Chopper.chop(4, [1, 3, 5, 7]))
    assert_equal(-1, Chopper.chop(6, [1, 3, 5, 7]))
    assert_equal(-1, Chopper.chop(8, [1, 3, 5, 7]))
  end
  
  def test_large_array
    assert_equal(99999, Chopper.chop(99999, @large_array))
  end
end