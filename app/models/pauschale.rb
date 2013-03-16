class Pauschale
  include Mongoid::Document
  field :stunden, type: Integer
  field :betrag, type: Money
  field :typ, type: Integer
end
