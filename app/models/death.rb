class Death < ApplicationRecord
    has_one :ceremony
    has_one :service
end
