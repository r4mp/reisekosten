class Nachweise
  include Mongoid::Document
  field :verpflegungsmehraufwand_id, type: Mongoid
  field :betrag, type: Money
end
