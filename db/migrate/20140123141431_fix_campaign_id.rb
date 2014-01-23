class FixCampaignId < ActiveRecord::Migration
  def change
  	remove_column :letters, :compaign_id
  	add_column :letters, :campaing_id, :string
  end
end
