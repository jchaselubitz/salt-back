class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :category
      t.string :image
      t.boolean :have

      t.timestamps
    end
  end
end
