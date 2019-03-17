class CreateJoinTableDoctorsServices < ActiveRecord::Migration[5.1]
  def change
    create_join_table :doctors, :services do |t|
      t.index [:doctor_id, :service_id]
      t.index [:service_id, :doctor_id]
    end
  end
end
