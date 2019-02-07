class TransitLine < ApplicationRecord
  # License
  # This is a course requirement for CS 192 Software Engineering II under the supervision of Asst. Prof. Ma. Rowena C. Solamo
  # of the Department of Computer Science, College of Engineering, University of the Philippines, Diliman for the AY 2015-2016

  # Code History
  # 1.0 - 2/5/2019 - Menard Cruz - Initial File
  # 2.0 - 2/7/2019 - Sean Chan - Made Entity relationships.

  has_and_belongs_to_many :transit_stops
  has_and_belongs_to_many :favorites

end
