class Death < ApplicationRecord

    # check dependent destroy as your app grows
    has_one :ceremony, :dependent => :destroy
    has_one :service, :dependent => :destroy
    validates :person, presence: true
end
