class ChangeTables < ActiveRecord::Migration[5.2]
  def change
    rename_column :employees, :name, :emp_name
    add_column :employees, :date_of_leaving, :date
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
