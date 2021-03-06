class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :avatar
      t.string :username
      t.string :password_digest
      t.integer :age
      t.string :catchphrase
      t.integer :park_badge
      t.integer :playground_badge
      t.integer :shoreline_badge
      t.integer :trail_badge
      t.integer :earth_steward_badge

      t.timestamps
    end
  end
end

