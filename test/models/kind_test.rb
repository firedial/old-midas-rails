require 'test_helper'

class KindTest < ActiveSupport::TestCase

  def setup
    @kind = Kind.new(name: 'test')
  end

  test 'should be valid' do
    assert @kind.valid?
  end

  test 'name should be present' do
    @kind.name = '  '
    assert_not @kind.valid?
  end
end
