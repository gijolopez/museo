require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/museum'
require './lib/curator'

class MuseumTest < Minitest::Test
  def test_it_exists
    museum = Museum.new({id: 1, name: "Tate Modern"})

    assert_instance_of Museum, museum
  end

  def test_it_has_an_id
    museum = Museum.new({id: 2, name: "Museo de Arte Moderno"})

    assert_equal 2, museum.id
  end

  def test_it_has_a_name
    museum = Museum.new({id: 3, name: "MoMA"})

    assert_equal "MoMA", museum.name
  end
end
