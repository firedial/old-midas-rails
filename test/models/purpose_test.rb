require 'test_helper'

class PurposeTest < ActiveSupport::TestCase

  def setup
    @purpose = Purpose.new(name: 'test')
  end

  test 'should be valid' do
    assert @purpose.valid?
  end

  test 'name should be present' do
    @purpose.name = '  '
    assert_not @purpose.valid?
  end

end
