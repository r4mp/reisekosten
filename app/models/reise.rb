class Reise
  include Mongoid::Document
  field :grund, type: String
  field :abfahrtDatum, type: Date
  field :abfahrtUhrzeit, type: Time
  field :ankunftDatum, type: Date
  field :ankunftUhrzeit, type: Time
  field :privatPkw, type: Boolean
  field :kilometer, type: Integer
  field :weitereFahrtkosten, type: String
  field :betrag, type: Money
  field :uebernachtungskosten, type: Money
  field :uebernachtungInklFruehstueck, type: Boolean

  validates :grund, :abfahrtDatum, :abfahrtUhrzeit, :ankunftDatum, :ankunftUhrzeit, presence: true, allow_blank: false, allow_nil: false

  #validates_presence_of :betrag, :if => :ok?

  #def ok?
  #  :weitereFahrtkosten == "value"
  #end

end
