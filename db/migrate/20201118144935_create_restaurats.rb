class CreateRestaurats < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurats do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :phone_number
      t.string :category, null: false

      t.timestamps
    end
  end
end
