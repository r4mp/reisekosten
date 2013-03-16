class Belegposition
  include Mongoid::Document

  field :beleg_id, type: Mongoid
  field :datum, type: Date
  field :stunden, type: Integer
  field :uebernachtung, type: Money
  field :verpflegung, type: Money
  field :kilometer, type: Integer
  field :nebenkosten, type: Money
  field :summe, type: Money

end
