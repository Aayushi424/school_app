class AddSchoolClassIdToStudent < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :school_class_id, :integer
  end
end
