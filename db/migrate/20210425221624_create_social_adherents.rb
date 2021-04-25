class CreateSocialAdherents < ActiveRecord::Migration[6.1]
  def change
    create_table :social_adherents do |t|
      t.references :adherents, null: false, foreign_key: true
      t.date :date_de_naissance
      t.string :numero_securite
      t.string :commune_naissance
      t.string :codepostal_naissance

      t.timestamps
    end
  end
end
