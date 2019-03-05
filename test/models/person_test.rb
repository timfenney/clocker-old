require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  test "it is not valid with no name" do
    person = Person.new()
    refute person.valid?, 'person is valid without a name'
    assert_not_nil person.errors[:name], 'no validation error for name'
  end
end
