class AddCcBcc < ActiveRecord::Migration
  def change
  	add_column :letters, :cc, :string
  	add_column :letters, :bcc, :string
  end
end
