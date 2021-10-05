class CreateProspects < ActiveRecord::Migration[6.0]
  def change
    create_table :prospects do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :contacted
      t.integer :level_of_contact
      t.string :email
      t.string :phone_no
      t.string :status
      t.string :preferred_contact
      t.string :preferred_time
      t.text :message

      t.timestamps
    end
  end
end
