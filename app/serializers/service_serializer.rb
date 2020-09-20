class ServiceSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :house, :inventory, :communications, :certificate, :will, :death_id

  #belongs_to :death

end
