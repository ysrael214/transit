class Favorite < ApplicationRecord
  belongs_to :commuter
  validates :name, presence: true
  has_and_belongs_to_many :transit_lines
end
