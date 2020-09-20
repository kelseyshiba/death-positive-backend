class CeremonySerializer
  include FastJsonapi::ObjectSerializer
  attributes :location, :kind, :speaker, :narrative, :name, :cost, :death_id
  #belongs_to :death
  #has_one :list

  attribute :lists do |object|
    object.lists.as_json
  end
end
