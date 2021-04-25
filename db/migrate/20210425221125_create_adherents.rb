class CreateAdherents < ActiveRecord::Migration[6.1]
  def change
    create_table :adherents do |t|

      t.timestamps
    end
  end
end
