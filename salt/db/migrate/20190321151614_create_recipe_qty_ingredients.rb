class CreateRecipeQtyIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_qty_ingredients do |t|
      t.integer :recipe_id
      t.integer :ingredient_id
      t.float :qty
      t.string :unit

      t.timestamps
    end
  end
end
