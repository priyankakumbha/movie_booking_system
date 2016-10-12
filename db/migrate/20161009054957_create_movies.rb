class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.text:name
      t.text:image
      
      t.timestamps null: false
    end
  end
end
