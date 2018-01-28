class CreateVersions < ActiveRecord::Migration[5.1]
  def change
    create_table :versions do |t|
      t.references :package, foreign_key: true, index: true
      t.string :version, null: false
      t.datetime :publication_date, null: false

      t.timestamps
    end
  end
end
