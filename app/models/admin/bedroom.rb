class Admin::Bedroom < ApplicationRecord
  belongs_to :cottage
  # validates_presence_of :name
end
