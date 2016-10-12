class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.text:items
      t.integer:quantity
      t.integer:price
      t.integer:total
      t.integer:ticket_id
      t.timestamps null: false
    end
  end
end
