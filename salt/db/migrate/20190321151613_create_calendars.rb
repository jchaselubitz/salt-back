class CreateCalendars < ActiveRecord::Migration[5.2]
  def change
    create_table :calendars do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.references :user, foreign_key: true, on_delete: :cascade

      t.timestamps
    end
  end
end
