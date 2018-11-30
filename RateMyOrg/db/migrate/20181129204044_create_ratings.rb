class CreateRatings < ActiveRecord::Migration[5.2]
  def up
    create_table :ratings do |t|
      t.integer :rate
      t.references :org, foreig_key: true
    end
  end
end
