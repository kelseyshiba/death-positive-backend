class CeremonySerializer
  include FastJsonapi::ObjectSerializer
  attributes :location, :kind, :speaker, :narrative, :name, :cost, :death_id
  #belongs_to :death
  #has_one :list

  attribute :contacts do |object|
    object.contacts.as_json
  end
end
