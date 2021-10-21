class AddReferencesToMarketingCampaigns < ActiveRecord::Migration[6.0]
  def change
    add_reference :marketing_campaigns, :user, null: false, foreign_key: true
  end
end
