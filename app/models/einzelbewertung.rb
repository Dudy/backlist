class Einzelbewertung < ActiveRecord::Base
  attr_accessible :bewertung_id, :typ, :wert
  belongs_to :bewertung
end
