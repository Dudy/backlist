class Benutzer < ActiveRecord::Base
  attr_accessible :benutzername, :passwort, :vollerName
  has_many :rezept
  has_many :termin
end
