class CreateSeats < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.integer:ticket_id
      t.integer:category_id
      t.string:seat_number

      t.timestamps null: false
    end
  end
end
