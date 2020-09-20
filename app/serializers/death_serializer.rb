class DeathSerializer
  include FastJsonapi::ObjectSerializer
  attributes :person, :date
  #has_one :ceremony
  #has_one :service

  attribute :ceremony do |object|
    object.ceremony.as_json
  end

  attribute :service do |object|
    object.service.as_json
  end

end
