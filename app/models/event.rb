# constants for Event
CLOCK_IN = 'clock-in'
CLOCK_OUT = 'clock-out'

class Event < ApplicationRecord
  self.inheritance_column = nil
  belongs_to :person
  validates :type, inclusion: { in: [CLOCK_IN, CLOCK_OUT] }
end
