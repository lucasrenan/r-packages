class CreateContributions < ActiveRecord::Migration[5.1]
  def change
    create_table :contributions, id: false do |t|
      t.references :package, foreign_key: true
      t.references :contributor, foreign_key: true
      t.integer :contribution_type, default: 0
    end

    add_index :contributions, [:package_id, :contributor_id], unique: true
  end
end
