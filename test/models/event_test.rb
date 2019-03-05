require 'test_helper'

class EventTest < ActiveSupport::TestCase
  test "not valid with no user" do
    event = Event.new()
    refute event.valid?, 'event is valid without an associated person'
    assert_not_nil event.errors[:person], 'no validation error for person'
  end

  test "not valid with no type" do
    alice = Person.new(name: 'Alice')
    event = Event.new(person: alice)
    refute event.valid?, 'event is valid without a type'
    assert_not_nil event.errors[:type], 'no validation error for type'
  end

  test "not valid with unrecognized type" do
    alice = Person.new(name: 'Alice')
    type = 'not-a-real-type'
    event = Event.new(person: alice, type: type)
    refute event.valid?, 'event is valid without a type'
    assert_not_nil event.errors[:type], 'no validation error for type'
  end
  
  test "valid for type 'clock-in'" do
    alice = Person.new(name: 'Alice')
    event = Event.new(person: alice, type: 'clock-in')
    assert event.valid?
  end
  
  test "valid for type 'clock-out'" do
    alice = Person.new(name: 'Alice')
    event = Event.new(person: alice, type: 'clock-out')
    assert event.valid?
  end
end


