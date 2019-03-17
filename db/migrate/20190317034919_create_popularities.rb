class CreatePopularities < ActiveRecord::Migration[5.1]
  def change
    create_table :popularities do |t|
      t.references :doctor, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :stars

      t.timestamps
    end
  end
end
