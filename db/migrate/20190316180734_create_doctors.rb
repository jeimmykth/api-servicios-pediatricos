class CreateDoctors < ActiveRecord::Migration[5.1]
  def change
    create_table :doctors do |t|
      t.references :user, foreign_key: true
      t.text :description
      t.string :url_photo

      t.timestamps
    end
  end
end
