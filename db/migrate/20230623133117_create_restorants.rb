class CreateRestorants < ActiveRecord::Migration[7.0]
  def change
    create_table :restorants do |t|
      t.string :name
      t.string :address
      t.integer :contact

      t.timestamps
    end
  end
end
