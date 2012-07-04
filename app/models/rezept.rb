class Rezept < ActiveRecord::Base
  attr_accessible :anleitung, :benutzer_id, :beschreibung, :rezeptname
  belongs_to :benutzer
  has_many :bewertung
  has_many :zutat
end
