class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.string :u_id
      t.string :c_code
      t.string :c_name
      t.string :s_id

      t.timestamps null: false
    end
  end
end
