class CreateBenutzers < ActiveRecord::Migration
  def change
    create_table :benutzers do |t|
      t.string :benutzername
      t.string :passwort
      t.string :vollerName

      t.timestamps
    end
  end
end
