gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/province'
require_relative '../lib/data'

class ProvinceTest < Minitest::Test
  def setup
    @asia = Province.new(sample_province_data)
  end

  def test_province_shortfall
    assert_equal(5, @asia.shortfall)
  end

  def test_province_profit
    assert_equal(230, @asia.profit)
  end

  def test_demand_cost
    assert_equal(270, @asia.demand_cost)
  end

  def test_demand_value
    assert_equal(500, @asia.demand_value)
  end

  def test_satisfied_demand
    assert_equal(25, @asia.satisfied_demand)
  end

  def test_zero_demand
    @asia.demand = 0
    assert_equal(-25, @asia.shortfall)
    assert_equal(0, @asia.profit)
  end
end
