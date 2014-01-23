class ChangeCampaignId < ActiveRecord::Migration
  def change
  	remove_column :letters, :campaing_id
  	add_column :letters, :campaign_id, :string
  end
end
