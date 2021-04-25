class CreateMembreAdherents < ActiveRecord::Migration[6.1]
  def change
    create_table :membre_adherents do |t|
      t.references :adherents, null: false, foreign_key: true
      t.boolean :membre
      t.boolean :alumni_ejc
      t.string :annee_mandat
      t.string :campus
      t.string :pole
      t.string :poste

      t.timestamps
    end
  end
end
