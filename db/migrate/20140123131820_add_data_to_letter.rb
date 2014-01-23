class AddDataToLetter < ActiveRecord::Migration
  def change
  	add_column :letters, :title, :string, :default => 'Sample', :null => false
  	add_column :letters, :from, :string, :default => '', :null => false
  	add_column :letters, :to, :string, :default => '', :null => false
  	add_column :letters, :body, :string
  	add_column :letters, :compaign_id, :string
  end
end
