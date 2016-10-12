class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|

    t.integer:user_id
    t.integer:adults
    t.integer:children
    t.integer:students
      t.timestamps null: false
    end
  end
end
