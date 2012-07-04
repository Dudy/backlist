class Bewertung < ActiveRecord::Base
  attr_accessible :rezept_id, :text
  belongs_to :rezept
  has_many :einzelbewertung
end
