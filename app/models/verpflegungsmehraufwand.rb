class Verpflegungsmehraufwand
  include Mongoid::Document
  field :reise_id, type: Mongoid
  field :datum, type: Date
  field :stunden, type: Integer
  field :nachweis, type: Nachweise
  field :ersparnis, type: Money
  field :maxBetrag, type: Money
  field :nachweisBetrag, type: Money
  field :pauschale, type: Money

  validates_presence_of :reise_id
end
