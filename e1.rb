require 'minitest/autorun'

class E1Test < Minitest::Test
  def amuse(arr)
    mused = [1] * arr.size

    if mused.size == 2
      if arr[0] > arr[1]
        mused[0] += 1
      end

      if arr[1] > arr[0]
        mused[1] += 1
      end
    end

    mused
  end

  def test_amuse
    assert_equal([], amuse([]))
    assert_equal([1], amuse([1]))
    assert_equal([1], amuse([2]))
    assert_equal([1, 2], amuse([1, 2]))
    assert_equal([2, 1], amuse([2, 1]))
    assert_equal([1, 2, 1], amuse([2, 1]))
  end
end
