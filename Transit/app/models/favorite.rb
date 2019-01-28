class Favorite < ApplicationRecord
  belongs_to :commuter
  validates :name, presence: true
end
