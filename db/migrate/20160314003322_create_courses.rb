class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :c_id
      t.string :c_type
      t.string :c_code
      t.string :c_name

      t.timestamps null: false
    end
  end
end
