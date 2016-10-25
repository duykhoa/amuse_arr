require 'minitest/autorun'

class E1Test < Minitest::Test
  def amuse(arr)
    mused = [1] * arr.size

    i = 0

    while i < arr.size
      j = 0

      while (j < arr.size)
        if j != i
          if arr[i] > arr[j] && !(mused[i] > mused[j])
            mused[i] += 1
          end

          if arr[i] < arr[j] && !(mused[i] < mused[j])
            mused[j] += 1
          end
        end

        j += 1
      end

      i += 1
    end

    mused
  end

  def test_amuse
    assert_equal([], amuse([]))
    assert_equal([1], amuse([1]))
    assert_equal([1], amuse([2]))
    assert_equal([1, 2], amuse([1, 2]))
    assert_equal([2, 1], amuse([2, 1]))
    assert_equal([1, 2, 1], amuse([1, 2, 1]))
    assert_equal([1, 1, 2], amuse([1, 1, 2]))
    assert_equal([1, 2, 2], amuse([1, 2, 2]))
    assert_equal([1, 2, 3], amuse([1, 2, 3]))
    assert_equal([1, 3, 2], amuse([1, 3, 2]))
    assert_equal([2, 1, 1], amuse([3, 1, 1]))
    assert_equal([2, 1, 2], amuse([3, 1, 3]))
    assert_equal([1, 2, 1], amuse([1, 3, 1]))
    assert_equal([2, 2, 1], amuse([3, 3, 1]))
    assert_equal([2, 2, 1], amuse([3, 3, 1]))
    assert_equal([1, 1, 1, 2], amuse([1, 1, 1, 6]))
    assert_equal([1, 2, 1, 2], amuse([1, 4, 1, 4]))
    assert_equal([1, 2, 1, 3], amuse([1, 4, 1, 5]))

    assert_equal([1, 3, 1, 2], amuse([1, 99, 1, 5]))
    assert_equal([1, 3, 4, 2], amuse([1, 99, 100, 5]))
    assert_equal([2, 3, 4, 1], amuse([88, 99, 100, 5]))
  end
end
