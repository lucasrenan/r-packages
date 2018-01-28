class CreatePackageUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :package_users, id: false do |t|
      t.references :package, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :user_type, default: 0
    end
  end
end
