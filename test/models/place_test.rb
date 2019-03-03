require 'test_helper'

class PlaceTest < ActiveSupport::TestCase

  def setup
    @place = Place.new(name: 'test')
  end

  test 'should be valid' do
    assert @place.valid?
  end

  test 'name should be present' do
    @place.name = '  '
    assert_not @place.valid?
  end

end
