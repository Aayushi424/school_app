ActiveAdmin.register Student do

    # See permitted parameters documentation:
    # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
    #
    # Uncomment all parameters which should be permitted for assignment
    #
    permit_params :first_name, :last_name, :phone_no, :age, :address, :school_class_id
    #
    # or
    #
    # permit_params do
    #   permitted = [:name, :session_year]
    #   permitted << :other if params[:action] == 'create' && current_user.admin?
    #   permitted
    # end

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
    
      show do |student|
        attributes_table do
          row :first_name
          row :last_name
          row :phone_no
          row :age 
          row :address
          row :school_class
          row :created_at
          row :updated_at
        end
      end
    
      form do |f|
        f.inputs do
          f.input :first_name
          f.input :last_name
          f.input :phone_no
          f.input :age 
          f.input :address 
          f.input :school_class 
        end
        f.actions
      end
      
    
  end
  