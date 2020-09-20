class ContactSerializer
  include FastJsonapi::ObjectSerializer
  attributes :first_name, :last_name, :email, :phone, :ceremony_id
  #belongs_to :ceremony

end
