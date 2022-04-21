class Admin::Bedroom < ApplicationRecord
  belongs_to :cottage
  has_many :reservations, dependent: :destroy
  accepts_nested_attributes_for :reservations
  validates_presence_of :name
end
