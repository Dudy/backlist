class CreateBewertungs < ActiveRecord::Migration
  def change
    create_table :bewertungs do |t|
      t.string :text
      t.int :rezept_id

      t.timestamps
    end
  end
end
