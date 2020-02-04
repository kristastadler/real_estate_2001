require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require './lib/house'

class HouseTest < Minitest::Test

  def test_it_exists
    skip
    house = House.new("$400000", "123 sugar lane")
    assert_instance_of House, house
  end

  def test_it_has_a_price
    skip
    house = House.new("$400000", "123 sugar lane")
    assert_equal 400000, house.price
  end

  def test_it_has_an_address
    skip
    house = House.new("$400000", "123 sugar lane")
    assert_equal "123 sugar lane", house.address
  end

  def test_it_has_rooms
    skip
    house = House.new("$400000", "123 sugar lane")
    assert_equal [], house.rooms
  end

  def test_rooms_added
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    house.add_room(room_1)
    house.add_room(room_2)
    assert_equal (room1, room2), house.rooms
  end
end


#  pry(main)> house.rooms
  #=> [#<Room:0x00007fccd29b5720...>, #<Room:0x00007fccd2985f48...>]
