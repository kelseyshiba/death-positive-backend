class Ceremony < ApplicationRecord
  belongs_to :death
  has_many :lists
end
