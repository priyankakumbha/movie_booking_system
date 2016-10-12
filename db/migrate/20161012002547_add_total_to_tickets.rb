class AddTotalToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :total, :integer
  end
end
