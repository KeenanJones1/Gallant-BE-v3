class CreateContactLists < ActiveRecord::Migration[6.0]
  def change
    create_table :contact_lists do |t|
      t.integer :contacts_awaiting
      t.integer :contacts_made
      t.integer :prospects_signed
      t.string :name
      t.timestamps
    end
  end
end
