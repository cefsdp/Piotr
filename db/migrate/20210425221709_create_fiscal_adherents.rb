class CreateFiscalAdherents < ActiveRecord::Migration[6.1]
  def change
    create_table :fiscal_adherents do |t|
      t.references :adherents, null: false, foreign_key: true
      t.string :nom_banque
      t.string :iban
      t.string :bic

      t.timestamps
    end
  end
end
