class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :s_id
      t.string :s_name
      t.string :s_type
      t.string :s_abbr

      t.timestamps null: false
    end
  end
end
