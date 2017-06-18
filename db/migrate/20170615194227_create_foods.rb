class CreateFoods < ActiveRecord::Migration[5.1]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :expiration_date
      t.string :quantity
      t.integer :category_id

      t.timestamps
    end
  end
end
