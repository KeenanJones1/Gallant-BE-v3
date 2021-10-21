class AddReferencesToProspect < ActiveRecord::Migration[6.0]
  def change
    add_reference :prospects, :contact_list, null: false, foreign_key: true
  end
end
