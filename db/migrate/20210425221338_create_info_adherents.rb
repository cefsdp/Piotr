class CreateInfoAdherents < ActiveRecord::Migration[6.1]
  def change
    create_table :info_adherents do |t|
      t.references :adherents, null: false, foreign_key: true
      t.string :prenom
      t.string :nom
      t.string :mail
      t.string :telephone
      t.string :adresse
      t.string :codepostal
      t.string :ville
      t.boolean :master

      t.timestamps
    end
  end
end
