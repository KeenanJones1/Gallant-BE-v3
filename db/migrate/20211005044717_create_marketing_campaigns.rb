class CreateMarketingCampaigns < ActiveRecord::Migration[6.0]
  def change
    create_table :marketing_campaigns do |t|
      t.integer :length
      t.float :final_price
      t.float :conversion_rate
      t.integer :prospects_reached
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
