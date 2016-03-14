class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :i_id
      t.string :i_email
      t.string :i_first
      t.string :i_middle
      t.string :i_last
      t.string :i_type

      t.timestamps null: false
    end
  end
end
