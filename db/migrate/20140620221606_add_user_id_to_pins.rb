class AddUserIdToPins < ActiveRecord::Migration
  def change
  	create_table :pins do |t|
  		t.integer :user_id
  		t.timestamps
  	end
      add_index :pins, :user_id
      Pin.reset_column_information ## Model name should be singular.
      ## The problem "can't rake db:migration. 
      ## SQLite3::SQLException: duplicate column name: user_id: ALTER TABLE "pins" ADD "user_id" integer.
  end
end
