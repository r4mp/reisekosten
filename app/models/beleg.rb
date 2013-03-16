class Beleg
  include Mongoid::Document 
  field :summeUebernachtung, type: Money
  field :summeVerpflegung, type: Money
  field :summeNebenkosten, type: Money
  field :summeGesamt, type: Money

  field :summeReisekosten, type: Money
  field :summeKilometergeld, type: Money
end
