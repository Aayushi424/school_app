class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
        t.integer :phone_no
      t.integer :age
      t.string :address

      t.timestamps
    end
  end
end