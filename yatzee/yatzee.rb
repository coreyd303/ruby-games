class Yatzee
attr_reader :roll  # => nil

  def initialize
    d1 = rand(1..6)
    d2 = rand(1..6)
    d3 = rand(1..6)
    d4 = rand(1..6)
    d5 = rand(1..6)

    @roll = [d1, d2, d3, d4, d5]
  end

  def self.number_checker(roll, test_number)
    keepers = roll.reject { |r| r != test_number }.reduce (:+)
    nil_tester(keepers)
  end

  def self.nil_tester(keepers)
    keepers == nil ? 0 : keepers
  end

  def self.count_ones(roll)
    test_number = 1
    number_checker(roll, test_number)
  end

  def self.count_twos(roll)
    test_number = 2
    number_checker(roll, test_number)
  end

  def self.count_threes(roll)
    test_number = 3
    number_checker(roll, test_number)
  end

  def self.count_fours(roll)
    test_number = 4
    number_checker(roll, test_number)
  end

  def self.count_fives(roll)
    test_number = 5
    number_checker(roll, test_number)
  end

  def self.count_sixes(roll)
    test_number = 6
    number_checker(roll, test_number)
  end

  def self.three_of_a_kind(roll)
    # check if there are 3 of a kind
    groups = roll.sort  # => 5
    # if there are add up all the dice
    groups.keep_if {|g| g.count == 3 }  # ~> NoMethodError: undefined method `keep_if' for 5:Fixnum
    # if not return 0
  end
end

Yatzee.three_of_a_kind([3,3,3,1,1])

# ~> NoMethodError
# ~> undefined method `keep_if' for 5:Fixnum
# ~>
# ~> /Users/coreydavis/ruby_games/yatzee/yatzee.rb:57:in `three_of_a_kind'
# ~> /Users/coreydavis/ruby_games/yatzee/yatzee.rb:62:in `<main>'
