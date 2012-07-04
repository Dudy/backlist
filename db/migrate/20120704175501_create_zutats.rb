class CreateZutats < ActiveRecord::Migration
  def change
    create_table :zutats do |t|
      t.string :text
      t.int :rezept_id

      t.timestamps
    end
  end
end
