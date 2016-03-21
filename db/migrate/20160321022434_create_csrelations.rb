class CreateCsrelations < ActiveRecord::Migration
  def change
    create_table :csrelations do |t|
      t.string :c_code
      t.string :s_id
      t.string :c_name

      t.timestamps null: false
    end
  end
end
