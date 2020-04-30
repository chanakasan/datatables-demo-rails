class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string "name"
      t.string "position"
      t.string "salary"
      t.string "start_date"
      t.string "office"
      t.string "extn"
    end
  end
end
