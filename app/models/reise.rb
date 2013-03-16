class Reise
  include Mongoid::Document
  field :grund, type: String
  field :ankunft, type: Time
  field :abreise, type: Time
  field :privatPkw, type: Boolean
  field :kilometer, type: Integer
  field :weitereFahrtkosten, type: String
  field :betrag, type: Money
  field :uebernachtungskosten, type: Money
  field :uebernachtungInklFruehstueck, type: Boolean
  field :erfassungAbgeschlossen, type: Boolean

  validates_presence_of :grund, :ankunft, :abreise, :kilometer
end
