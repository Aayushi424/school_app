ActiveAdmin.register Teacher do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :first_name, :last_name, :age, :qualification, school_class_ids:[]

  index do
    selectable_column
    id_column
    column :first_name
    column :last_name
    column :phone_no
    column :age 
    column :address
    actions
  end

  show do |teacher|
    attributes_table do
      row :first_name
      row :last_name
      row :phone_no
      row :age 
      row :address
      row :created_at
      row :updated_at
      row "classes" do |t|
        t.school_classes
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :first_name
      f.input :last_name
      f.input :age 
      f.input :qualification 
      f.input :school_class_ids, as: :select, collection: SchoolClass.all, input_html: { multiple: true }
    end
    f.actions
  end
  
  


end
