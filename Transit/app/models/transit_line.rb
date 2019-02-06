class TransitLine < ApplicationRecord
  has_and_belongs_to_many :transit_stops
end
