class CreateEinzelbewertungs < ActiveRecord::Migration
  def change
    create_table :einzelbewertungs do |t|
      t.string :typ
      t.int :wert
      t.int :bewertung_id

      t.timestamps
    end
  end
end
