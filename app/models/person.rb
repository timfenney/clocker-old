class Person < ApplicationRecord
  self.inheritance_column = nil

  has_many :events
  validates_presence_of :name
end
