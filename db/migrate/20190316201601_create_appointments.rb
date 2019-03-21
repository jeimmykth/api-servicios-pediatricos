class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.references :doctor, foreign_key: true
      t.references :user, foreign_key: true
      t.references :service, foreign_key: true
      t.datetime :date

      t.timestamps
    end
  end
end
