class CreatePackages < ActiveRecord::Migration[5.1]
  def change
    create_table :packages do |t|
      t.string :name, null: false
      t.string :title
      t.text :description

      t.timestamps
    end

    add_index :packages, :name, unique: true
  end
end
