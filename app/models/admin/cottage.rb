class Admin::Cottage < ApplicationRecord
  validates_presence_of :name
  has_many :bedrooms, dependent: :destroy
  # accepts_nested_attributes_for :bedrooms
  accepts_nested_attributes_for :bedrooms, allow_destroy: true
end
