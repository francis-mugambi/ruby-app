class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    change_table :students do |t|
      t.string :name
     

      t.timestamps
    end
  end
end
