class RemoveTitleDefault < ActiveRecord::Migration
  def change
  	change_column :letters, :title, :string, :default => '', :null => true
  end
end
