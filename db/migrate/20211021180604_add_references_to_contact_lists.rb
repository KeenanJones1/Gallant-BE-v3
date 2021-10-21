class AddReferencesToContactLists < ActiveRecord::Migration[6.0]
  def change
    add_reference :contact_lists, :marketing_campaign, null: false, foreign_key: true
  end
end
