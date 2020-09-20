class Ceremony < ApplicationRecord
  belongs_to :death
  has_one :list
end
