class CreateDocumentsAdherents < ActiveRecord::Migration[6.1]
  def change
    create_table :documents_adherents do |t|
      t.references :adherents, null: false, foreign_key: true
      t.boolean :cvec
      t.boolean :certificat_scolarite
      t.boolean :carte_vital
      t.boolean :carte_identite
      t.boolean :rib
      t.boolean :ba
      t.boolean :cotisation

      t.timestamps
    end
  end
end
