class Pauschale
  include Mongoid::Document
  field :stunden, type: Integer
  field :betrag, type: Money
end
