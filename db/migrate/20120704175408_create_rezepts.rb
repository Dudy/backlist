class CreateRezepts < ActiveRecord::Migration
  def change
    create_table :rezepts do |t|
      t.text :anleitung
      t.string :rezeptname
      t.text :beschreibung
      t.int :benutzer_id

      t.timestamps
    end
  end
end
