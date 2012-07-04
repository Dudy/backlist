class CreateTermins < ActiveRecord::Migration
  def change
    create_table :termins do |t|
      t.datetime :datum
      t.string :beschreibung
      t.int :benutzer_id

      t.timestamps
    end
  end
end
