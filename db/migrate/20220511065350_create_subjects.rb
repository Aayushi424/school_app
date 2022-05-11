class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects do |t|
      t.string :book_name
      t.string :description

      t.timestamps
    end
  end
end
