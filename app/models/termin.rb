class Termin < ActiveRecord::Base
  attr_accessible :benutzer_id, :beschreibung, :datum
  belongs_to :benutzer
end
