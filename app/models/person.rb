class Person < ApplicationRecord
  self.inheritance_column = nil
  validates_presence_of :name
end
