class CreateRecipeCalendars < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_calendars do |t|
      t.integer :recipe_id
      t.integer :calendar_id

      t.timestamps
    end
  end
end
