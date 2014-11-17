require 'pry'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'yatzee'

class YatzeeTest<Minitest::Unit::TestCase

  def test_it_can_score_ones
    assert_equal(0, Yatzee.count_ones([2,3,5,4,3]))
    assert_equal(1, Yatzee.count_ones([2,3,1,4,3]))
    assert_equal(4, Yatzee.count_ones([1,1,1,4,1]))
  end

  def test_it_can_score_twos
    assert_equal(0, Yatzee.count_twos([1,3,5,4,3]))
    assert_equal(2, Yatzee.count_twos([2,3,1,4,3]))
    assert_equal(6, Yatzee.count_twos([2,2,2,4,1]))
  end

  def test_it_can_score_threes
    assert_equal(0,  Yatzee.count_threes([2,1,5,4,1]))
    assert_equal(3,  Yatzee.count_threes([2,2,1,4,3]))
    assert_equal(12, Yatzee.count_threes([3,3,4,3,3]))
  end

  def test_it_can_score_fours
    assert_equal(0, Yatzee.count_fours([2,3,5,1,3]))
    assert_equal(4, Yatzee.count_fours([2,3,1,4,3]))
    assert_equal(8, Yatzee.count_fours([1,4,1,4,1]))
  end

  def test_it_can_score_fives
    assert_equal(0,  Yatzee.count_fives([2,3,3,4,3]))
    assert_equal(5,  Yatzee.count_fives([2,3,5,4,3]))
    assert_equal(10, Yatzee.count_fives([5,1,5,4,1]))
  end

  def test_it_can_score_sixes
    assert_equal(0,  Yatzee.count_sixes([2,3,3,4,3]))
    assert_equal(6,  Yatzee.count_sixes([2,3,6,4,3]))
    assert_equal(12, Yatzee.count_sixes([5,1,6,6,1]))
  end

  def test_it_can_score_three_of_a_kind
    assert_equal(0,  Yatzee.three_of_a_kind([1,2,3,4,5]))
    assert_equal(11, Yatzee.three_of_a_kind([3,3,3,1,1]))
    assert_equal(20, Yatzee.three_of_a_kind([5,5,5,3,2]))
  end

  def test_it_can_score_four_of_a_kind
    assert_equal(0,  Yatzee.four_of_a_kind([1,2,3,4,5]))
    assert_equal(13, Yatzee.four_of_a_kind([3,3,3,3,1]))
    assert_equal(22, Yatzee.four_of_a_kind([5,5,5,5,2]))
  end

  def test_it_can_score_a_full_house
    assert_equal(0,  Yatzee.full_house([1,2,3,4,5]))
    assert_equal(25, Yatzee.full_house([3,3,3,1,1]))
    assert_equal(25, Yatzee.full_house([5,5,5,1,1]))
  end

  def test_it_can_score_a_small_straight
    assert_equal(0,  Yatzee.small_straight([1,1,2,1,1]))
    assert_equal(30, Yatzee.small_straight([1,2,3,4,4]))
    assert_equal(30, Yatzee.small_straight([2,3,4,5,5]))
    assert_equal(30, Yatzee.small_straight([3,4,5,6,6]))
  end

  def test_it_can_score_a_large_straight
    assert_equal(40, Yatzee.large_straight([1,1,3,4,5]))
    assert_equal(40, Yatzee.small_straight([1,2,3,4,5]))
    assert_equal(40, Yatzee.small_straight([2,3,4,5,6]))
  end

  def test_it_can_score_a_yatzee
    assert_equal(0,  Yatzee.scores_a_yatzee([1,2,1,1,1]))
    assert_equal(50, Yatzee.scores_a_yatzee([2,2,2,2,2]))
    assert_equal(50, Yatzee.scores_a_yatzee([5,5,5,5,5]))
    assert_equal(50, Yatzee.scores_a_yatzee([6,6,6,6,6]))
  end
end