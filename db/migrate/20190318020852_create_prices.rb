class CreatePrices < ActiveRecord::Migration[5.1]
  def change
    create_table :prices do |t|
      t.references :doctor, foreign_key: true
      t.references :service, foreign_key: true
      t.float :amount

      t.timestamps
    end
  end
end
