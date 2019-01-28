class Commuter < ApplicationRecord
  has_many :favorites, dependent: :destroy
  
end
