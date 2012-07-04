class Zutat < ActiveRecord::Base
  attr_accessible :rezept_id, :text
  belongs_to :rezept
end
