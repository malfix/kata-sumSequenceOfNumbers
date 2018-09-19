require_relative "exercise"
require "test/unit"

class TestExercise < Test::Unit::TestCase
  test 'found sequence' do
    assert_equal [2, 3, 4], Exercise.new(9, [1, 2, 3, 4, 5]).find()
  end

  test 'not found sequence because' do
    assert_equal [], Exercise.new(100, [1, 2, 3, 4, 5]).find()
  end

  test 'not found sequence because no valid elements' do
    assert_equal [], Exercise.new(2, [3, 1, 3, 4, 5]).find()
  end

  test 'found sequence match with an element' do
    assert_equal [100], Exercise.new(100, [3, 1, 100, 5]).find()
  end
end
